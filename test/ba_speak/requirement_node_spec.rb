require 'spec_helper'
require 'ba_speak/nodes'

module BaSpeak

  describe RequirementNode do

    it "must expand examples" do
      nodes = RequirementNode.new("A <Role> in the system <Can or Cannot Create> projects", [
                ExamplesNode.new('', [
                  RowNode.new('', ['Role', 'Can or Cannot Create']),
                  RowNode.new('', ['PM', 'Can Create']),
                  RowNode.new('', ['User', 'Cannot Create'])
                ])
              ])
      array = [
                'A PM in the system Can Create projects',
                'A User in the system Cannot Create projects'
              ]
      nodes.expand.must_equal array
    end

    it "must return its name when expand is called and no examples exist" do
      nodes = RequirementNode.new("A PM in the system can create projects")
      array = ['A PM in the system can create projects']
      nodes.expand.must_equal array
    end


  end

end
