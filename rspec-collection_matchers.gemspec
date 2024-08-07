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
  spec.description   = "Collection cardinality matchers, extracted from rspec-expectations"
  spec.homepage      = "https://github.com/rspec/rspec-collection_matchers"
  spec.license       = "MIT"

  spec.metadata = {
    'bug_tracker_uri'   => 'https://github.com/rspec/rspec-collection_matchers/issues',
    'changelog_uri'     => "https://github.com/rspec/rspec-collection_matchers/blob/v#{spec.version}/Changelog.md",
    'documentation_uri' => 'https://rspec.info/documentation/',
    'mailing_list_uri'  => 'https://groups.google.com/forum/#!forum/rspec',
    'source_code_uri'   => 'https://github.com/rspec/rspec-collection_matchers',
  }

  spec.files         = `git ls-files -- lib/*`.split("\n")
  spec.files         += %w[README.md LICENSE.txt Changelog.md]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency     "rspec-expectations", ">= 2.99.0.beta1"

  spec.add_development_dependency "bundler",     ">= 1.3"
  spec.add_development_dependency "activemodel", ">= 3.0"
end
