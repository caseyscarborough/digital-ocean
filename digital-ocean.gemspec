# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'digital_ocean/version'

Gem::Specification.new do |spec|
  spec.name          = "digital-ocean"
  spec.version       = DigitalOcean::VERSION
  spec.authors       = ["Casey Scarborough"]
  spec.email         = ["caseyscarborough@gmail.com"]
  spec.description   = "A wrapper for Digital Ocean's API."
  spec.summary       = "A simple and easy-to-use wrapper for interacting with Digital Ocean's API."
  spec.homepage      = "https://github.com/caseyscarborough/digital-ocean"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "httparty"
  spec.add_dependency "hashie"
  spec.add_dependency "json" if RUBY_VERSION < '1.9.2'
end
