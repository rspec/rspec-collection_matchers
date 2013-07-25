# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/collection_matchers/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-collection_matchers"
  spec.version       = RSpec::CollectionMatchers::VERSION
  spec.authors       = ["Hugo Baraúna"]
  spec.email         = ["hugo.barauna@plataformatec.com.br"]
  spec.summary       = "rspec-collection_matchers-#{RSpec::CollectionMatchers::VERSION}"
  spec.description   = "rspec have(n).items matchers"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency     "rspec-expectations", ">= 2.99.0.pre"

  spec.add_development_dependency "bundler",    "~> 1.3"
  spec.add_development_dependency "rake",       "~> 10.0.0"
  spec.add_development_dependency "rspec-core", ">= 2.99.0"
  spec.add_development_dependency "cucumber",   "~> 1.1.9"
  spec.add_development_dependency "aruba",      "~> 0.5"
end
