require 'spec_helper'
require 'ba_speak/parser'

DUMMY_SOURCE_URI = 'file:///etc/directives/requirements/sample.requirements'

module BaSpeak

  describe Parser do

    it "must parse an empty file" do
      output  = parse_with_uri ""
      nodes   = FileNode.new({ uri: DUMMY_SOURCE_URI })
      output.must_equal nodes
    end

    it "must parse an empty group" do
      output = parse_with_uri <<-EOF
               Create a Project
               ================
               EOF
      nodes = FileNode.new({ uri: DUMMY_SOURCE_URI }, [
                GroupNode.new({ value: 'Create a Project', offset: 71 })
              ])
      output.must_equal nodes
    end
    
    it "must parse multiple empty groups" do
      output = parse_with_uri <<-EOF
               Create a Project
               ================
    
               Create a User
               =============
               EOF
      nodes = FileNode.new({ uri: DUMMY_SOURCE_URI }, [
                GroupNode.new({ value: 'Create a Project', offset: 71 }),
                GroupNode.new({ value: 'Create a User', offset: 140 })                  
              ])
              
      output.must_equal nodes
    end
    
    it "must parse requirements" do
      output = parse_with_uri <<-EOF
               Create a Project
               ================
    
                 * Given a user with role <Role>
             EOF
      nodes = FileNode.new({ uri: DUMMY_SOURCE_URI }, [
                GroupNode.new({ value: 'Create a Project', offset: 71 }, [
                  RequirementNode.new({ value: 'Given a user with role <Role>', offset: 142 })
                ])                  
              ])
      output.must_equal nodes
    end
    
    it "must parse a multi-line requirement" do
      output = parse_with_uri <<-EOF
               Create a Project
               ================
    
                 * Given a
                   user with
                   role <Role>
             EOF
      nodes = FileNode.new({ uri: DUMMY_SOURCE_URI }, [
                GroupNode.new({ value: 'Create a Project', offset: 71 }, [
                  RequirementNode.new({ value: "Given a user with role <Role>", offset: 142 })
                ])          
              ])
      output.must_equal nodes
    end
    
    it "must parse multiple non-empty groups" do
      output = parse_with_uri <<-EOF
               Create a Project
               ================
    
                 * Projects without names are invalid
    
               Create a User
               =============
    
                 * Users with names are valid
               EOF
      nodes = FileNode.new({ uri: DUMMY_SOURCE_URI }, [
                GroupNode.new({ value: 'Create a Project', offset: 71 }, [
                  RequirementNode.new({ value: 'Projects without names are invalid', offset: 142 })
                ]),
                GroupNode.new({ value: 'Create a User', offset: 199 }, [
                  RequirementNode.new({ value: 'Users with names are valid', offset: 264 })
                ])          
              ])
      output.must_equal nodes
    end
    
    it "must parse tables" do
      output = parse_with_uri <<-EOF
               Create a Project
               ================
    
               * Given a
                 user with
                 role <Role>
                 
                 Examples:
                  | Role | Remarks |
                  | PM   | ARRR    |
                  | User | RAAA    |
             EOF
      nodes = FileNode.new({ uri: DUMMY_SOURCE_URI }, [
                GroupNode.new({ value: 'Create a Project', offset: 71 }, [
                  RequirementNode.new({ value: "Given a user with role <Role>", offset: 140 }, [
                    TableNode.new({ offset: 269 }, [
                      RowNode.new({ offset: 269 }, ['Role', 'Remarks' ]),
                      RowNode.new({ offset: 306 }, ['PM',   'ARRR'    ]),
                      RowNode.new({ offset: 343 }, ['User', 'RAAA'    ])
                    ])
                  ])
                ])                  
              ])
      output.must_equal nodes
    end
    
    it "must parse multiple requirements" do
      output = parse_with_uri <<-EOF
               Project Management
               ==================
    
               * A <Role> in the system <Can or Cannot Create> projects
    
                   | Role | Can or Cannot Create |
                   |------|----------------------|
                   | PM   | Can Create           |
                   | User | Cannot Create        |
    
               * An empty project is invalid
             EOF
      nodes = FileNode.new({ uri: DUMMY_SOURCE_URI }, [
                GroupNode.new({ value: 'Project Management', offset: 71 }, [
                  RequirementNode.new({ value: "A <Role> in the system <Can or Cannot Create> projects", offset: 144 }, [
                    TableNode.new({ offset: 225 }, [
                      RowNode.new({ offset: 225 }, ['Role', 'Can or Cannot Create']),
                      RowNode.new({ offset: 327 }, ['PM', 'Can Create']),
                      RowNode.new({ offset: 378 }, ['User', 'Cannot Create'])
                    ])
                  ]),
                  RequirementNode.new({ value: "An empty project is invalid", offset: 430 }, [])
                ])                  
              ])
      output.must_equal nodes
    end
    
    it "must parse groups followed by arbitrary text" do
      output = parse_with_uri <<-EOF
                 User Login
                 ==========
    
                 (Derived from: http://www.allaboutagile.com/user-story-example/)
    
                 As a registered user, I want to log in,
                 so I can access subscriber content.
    
                 Success:
    
                   * When I check 'Remember Me' and log in succesfully,
                     I won't have to login again next time
    
                   * When I uncheck 'Remember Me' and log in successfully,
                     I should be asked to login next time
               EOF
      nodes = FileNode.new({ uri: DUMMY_SOURCE_URI }, [
                GroupNode.new({ value: 'User Login', offset: 73 }, [
                  RequirementNode.new({ value: 'When I check \'Remember Me\' and log in succesfully, I won\'t have to login again next time', offset: 369 }),
                  RequirementNode.new({ value: 'When I uncheck \'Remember Me\' and log in successfully, I should be asked to login next time', offset: 505 })
                ])          
              ])
      output.must_equal nodes
    end

    def parse_with_uri(string, show_tokens = false)
      Parser.parse(DUMMY_SOURCE_URI + "\n" + string, show_tokens)
    end

  end

end