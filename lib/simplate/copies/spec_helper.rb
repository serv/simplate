require 'rubygems'

pathname_modules = Pathname.new(Dir.pwd).parent.join("lib/modules")
pathname_models  = Pathname.new(Dir.pwd).parent.join("lib/models")

Dir["#{pathname_modules}/*.rb"].each {|file| require file}
Dir["#{pathname_models}/*.rb"].each {|file| require file}

RSpec.configure do |config|
end
