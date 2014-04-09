require 'spec_helper'

describe Simplate::Command do

  it '.prepare' do
    Simplate::Command.app_name = 'simplate'
    Simplate::Command.app_name.should eql('simplate')
  end

  it '.executables' do
    executables = Simplate::Command.executables('simplate2')

    Simplate::Command.app_name.should eql('simplate2')
    executables.class.should eql(Array)
  end

end
