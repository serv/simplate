# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simplate/version'

Gem::Specification.new do |spec|
  spec.name          = "simplate"
  spec.version       = Simplate::VERSION
  spec.authors       = ["Jason Kim"]
  spec.email         = ["iamjsonkim@gmail.com"]
  spec.summary       = %q{Boilerplate for creating an opinionated Ruby app}
  spec.description   = %q{Simplate generates a perfect directory structure for a well organized Ruby app}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
