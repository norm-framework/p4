require 'spec_helper'
require 'ba_speak/nodes'

module BaSpeak

  describe RequirementNode do

    it "must expand examples" do
      nodes = RequirementNode.new({ :value => "A <Role> in the system <Can or Cannot Create> projects", :offset => 0 }, [
                TableNode.new({ :offset => 0 }, [
                  RowNode.new({ :offset => 0 }, ['Role', 'Can or Cannot Create']),
                  RowNode.new({ :offset => 0 }, ['PM', 'Can Create']),
                  RowNode.new({ :offset => 0 }, ['User', 'Cannot Create'])
                ])
              ])
      array = [
                'A PM in the system Can Create projects',
                'A User in the system Cannot Create projects'
              ]
      nodes.expand.must_equal array
    end

    it "must return its name when expand is called and no examples exist" do
      nodes = RequirementNode.new({ :value => "A PM in the system can create projects", :offset => 0 })
      array = ['A PM in the system can create projects']
      nodes.expand.must_equal array
    end


  end

end
