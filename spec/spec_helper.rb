require 'rubygems'

pathname_modules = Pathname.new(File.dirname(__FILE__)).parent.join("lib/simplate/modules")
Dir["#{pathname_modules}/*.rb"].each {|file| require file}

pathname_root_module = Pathname.new(File.dirname(__FILE__)).parent.join('lib')
Dir["#{pathname_root_module}/*.rb"].each {|file| require file}

RSpec.configure do |config|
end
