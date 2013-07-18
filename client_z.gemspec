# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'client_z/version'

Gem::Specification.new do |spec|
  spec.name          = "client_z"
  spec.version       = ClientZ::VERSION
  spec.authors       = ["hubert"]
  spec.email         = ["hubert77@gmail.com"]
  spec.description   = %q{Client gem wrapping up zaarly api v2}
  spec.summary       = %q{right on}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'her'
  spec.add_dependency 'typhoeus'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
