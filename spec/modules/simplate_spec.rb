require 'spec_helper'

describe Simplate do

  it '.root_path' do
    expected = Pathname.new(__FILE__).parent.parent.parent.to_s
    Simplate.root_path.to_s.should == expected
  end

end
