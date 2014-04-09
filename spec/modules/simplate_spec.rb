require 'spec_helper'

describe Simplate do

  it '.root_path' do
    Simplate.root_path.to_s.should == '/Users/jkim/projects/ruby/gems/simplate'
  end

end
