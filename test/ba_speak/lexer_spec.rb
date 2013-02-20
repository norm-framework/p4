require 'spec_helper'
require 'ba_speak/lexer'

DUMMY_SOURCE_URI = 'file:///etc/directives/requirements/sample.requirements'

module BaSpeak

  describe Lexer do

    it "must tokenize file uris" do
      output = tokenize ""
      tokens = [
                 [:FILE, { uri: DUMMY_SOURCE_URI }]
               ]
      output.must_equal tokens
    end

    it "must tokenize multiple empty files" do
      output = tokenize <<-EOF
      
                 #{ DUMMY_SOURCE_URI }
               EOF
      tokens = [
                 [:FILE, { uri: DUMMY_SOURCE_URI }],
                 [:FILE, { uri: DUMMY_SOURCE_URI }]
               ]
      output.must_equal tokens
    end

    it "must tokenize files with non alphanumeric characters" do
      output = Lexer.new.tokenize <<-EOF
                  file:///Users/mmaglana/src/norm-framework/p4/directives/requirements/tickets/create_tickets.requirements
                  Create Tickets
                  ==============
               EOF
      tokens = [
                 [:FILE, { uri: 'file:///Users/mmaglana/src/norm-framework/p4/directives/requirements/tickets/create_tickets.requirements'} ],
                 [:GROUP, { value: 'Create Tickets', offset: 141 }]
               ]
      output.must_equal tokens
    end

    it "must tokenize the group name" do
      output = tokenize <<-EOF
               Create a Project
               ================
               EOF

      tokens = [ 
                 [:FILE, { uri: DUMMY_SOURCE_URI }],
                 [:GROUP, { value: 'Create a Project', offset: 71 } ]
               ] 
      output.must_equal tokens
    end

    it "must tokenize strings" do
      output = tokenize <<-EOF
               Arbitrary text
               of the unusual kind
               EOF
    
      tokens = [ 
                 [:FILE, { uri: DUMMY_SOURCE_URI }],
                 [:TEXT, { value: 'Arbitrary text of the unusual kind', offset: 71 } ] 
               ]
      output.must_equal tokens
    end
    
    it "must tokenize a requirement" do
      output = tokenize <<-EOF
               * A project without a name is invalid
               EOF
    
      tokens = [ 
                 [:FILE, { uri: DUMMY_SOURCE_URI }],
                 [:REQUIREMENT, { value: 'A project without a name is invalid', offset: 71 }] 
               ]
      output.must_equal tokens
    end
    
    it "must tokenize a requirement followed by arbitrary text" do
      output = tokenize <<-EOF
               * A project without a name is invalid
    
                 Example:
                   Arbitrary text
               EOF
      tokens = [ 
                 [:FILE, { uri: DUMMY_SOURCE_URI }],
                 [:REQUIREMENT, { value:'A project without a name is invalid', offset: 71 }], 
                 [:TEXT, { value:'Example: Arbitrary text', offset:131 }] 
               ]
      output.must_equal tokens
    end
    
    it "must tokenize a multi-line requirement" do
      output = tokenize <<-EOF
               * A project without a
                 name is invalid
               EOF
      tokens = [  
                 [:FILE, { uri: DUMMY_SOURCE_URI }],
                 [:REQUIREMENT, { value: 'A project without a name is invalid', offset: 71 }] 
               ]
      output.must_equal tokens
    end
    
    it "must tokenize a multi-line requirement followed by arbitrary text" do
      output = tokenize <<-EOF
               * A project without
                 a name is invalid
    
                 Example:
                   Arbitrary text
               EOF
      tokens = [ 
                 [:FILE, { uri: DUMMY_SOURCE_URI }],
                 [:REQUIREMENT, { value: 'A project without a name is invalid', offset: 71 }], 
                 [:TEXT, { value: 'Example: Arbitrary text', offset: 148 }] 
               ]
      output.must_equal tokens
    end
    
    it "must tokenize tables" do
      output = tokenize <<-EOF
               | Name      | Description       |
               | Project A | First Project     |
               | Project B | Second Project    |
               EOF
      tokens = [
                 [:FILE, { uri: DUMMY_SOURCE_URI }],
                 [:ROW, { offset: 71  }], [:CELL, { value: 'Name'      }], [:CELL, { value: 'Description'    }],
                 [:ROW, { offset: 120 }], [:CELL, { value: 'Project A' }], [:CELL, { value: 'First Project'  }],
                 [:ROW, { offset: 169 }], [:CELL, { value: 'Project B' }], [:CELL, { value: 'Second Project' }]
               ]
      output.must_equal tokens
    end
    
    it "must ignore table borders" do
      output = tokenize <<-EOF
               | Name      | Description       |
               |-----------|-------------------|
               | Project A | First Project     |
               | Project B | Second Project    |
               EOF
      tokens = [
                 [:FILE, { uri: DUMMY_SOURCE_URI }],
                 [:ROW, { offset: 71  }], [:CELL, { value: 'Name'      }], [:CELL, { value: 'Description'    }],
                 [:ROW, { offset: 169 }], [:CELL, { value: 'Project A' }], [:CELL, { value: 'First Project'  }],
                 [:ROW, { offset: 218 }], [:CELL, { value: 'Project B' }], [:CELL, { value: 'Second Project' }]
               ]
      output.must_equal tokens
    end
    
    it "must tokenize requirements with placeholders" do
      output = tokenize <<-EOF
               * Given <Role>
                 <Something>
               EOF
      tokens = [  
                 [:FILE, { uri: DUMMY_SOURCE_URI }],
                 [:REQUIREMENT, { value: 'Given <Role> <Something>', offset: 71 }] 
               ]
      output.must_equal tokens
    end
    
    it "must tokenize a full requirements file" do
      output = tokenize <<-EOF
               Create a Project
               ================
    
               * Given a user has a role of <Role> in the system
                 Then he <Can or Cannot Create> projects
    
                 Examples:
                   | Role  | Can or Cannot Create |
                   | Admin | Can Create           |
                   | User  | Cannot Create        |
    
                 Notes:
                   The quick brown fox jumps over the lazy
                   dog. The quick brown fox jumps.
               EOF
      tokens = [
                 [:FILE, { uri: DUMMY_SOURCE_URI }],
                 [:GROUP, { value: 'Create a Project', offset: 71 }],
                 [:REQUIREMENT, { value: 'Given a user has a role of <Role> in the system Then he <Can or Cannot Create> projects', offset: 140 }],
                 [:TEXT, { value: 'Examples:', offset: 269 }],
                 [:ROW,  { offset: 298 }], [:CELL, { value: 'Role'  }], [:CELL, { value: 'Can or Cannot Create' }],
                 [:ROW,  { offset: 350 }], [:CELL, { value: 'Admin' }], [:CELL, { value: 'Can Create'           }],
                 [:ROW,  { offset: 402 }], [:CELL, { value: 'User'  }], [:CELL, { value: 'Cannot Create'        }],
                 [:TEXT, { value: 'Notes: The quick brown fox jumps over the lazy dog. The quick brown fox jumps.', offset: 457 }]
               ]
      output.must_equal tokens
    end
    
    it "must tokenize a requirements file with arbitrary text right under the group name" do
      output = tokenize <<-EOF
               User Login
               ==========
               (Derived from: http://www.allaboutagile.com/user-story-example/)
    
               As a registered user, I want to log in,
               so I can access subscriber content.
    
               Success:
    
                 * When I check 'Remember Me' and log in succesfully,
                   I won't have to login again next time
               EOF
      tokens = [
                 [:FILE, { uri: DUMMY_SOURCE_URI }],
                 [:GROUP, { value: 'User Login', offset: 71 }],
                 [:TEXT,  { value: '(Derived from: http://www.allaboutagile.com/user-story-example/)', offset: 123 }],
                 [:TEXT,  { value: 'As a registered user, I want to log in, so I can access subscriber content.', offset: 208 }],
                 [:TEXT,  { value: 'Success:', offset: 319 }],
                 [:REQUIREMENT, { value: 'When I check \'Remember Me\' and log in succesfully, I won\'t have to login again next time', offset: 350 }]
               ]
      output.must_equal tokens
    end

    def tokenize(data)
      Lexer.new.tokenize(DUMMY_SOURCE_URI + "\n" + data)
    end

  end # describe Lexer

end # module BaSpeak