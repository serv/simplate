require 'rubygems'

pathname_modules = Pathname.new(File.dirname(__FILE__)).parent.join("lib/simplate/modules")
Dir["#{pathname_modules}/*.rb"].each {|file| require file}

pathname_root_module = Pathname.new(File.dirname(__FILE__)).parent.join('lib')
Dir["#{pathname_root_module}/*.rb"].each {|file| require file}

RSpec.configure do |config|
end

if defined?(RUBY_ENGINE) && RUBY_ENGINE == "ruby" && RUBY_VERSION >= "1.9"
  module Kernel
    alias :__at_exit :at_exit
    def at_exit(&block)
      __at_exit do
        exit_status = $!.status if $!.is_a?(SystemExit)
        block.call
        exit exit_status if exit_status
      end
    end
  end
end
