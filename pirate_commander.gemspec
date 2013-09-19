# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pirate_commander/version'

Gem::Specification.new do |spec|
  spec.name          = "pirate_commander"
  spec.version       = PirateCommander::VERSION
  spec.authors       = ["Ivan Storck"]
  spec.email         = ["ivanoats@gmail.com"]
  spec.description   = %q{provides the pirate_say command}
  spec.summary       = %q{provides the pirate_say command}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.add_dependency "trollop"
  spec.add_dependency "active_support"
  spec.add_dependency "booty"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
