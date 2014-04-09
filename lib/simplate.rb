require "simplate/version"
require_relative "simplate/modules/command"

module Simplate

  def Simplate.root_path
    Pathname.new(File.dirname(__FILE__)).parent
  end

end
