require 'rspec/collection_matchers/version'
require 'rspec/collection_matchers/matchers'
require 'rspec/collection_matchers/have'
require 'rspec/collection_matchers/rails' if defined? Rails && respond_to?(:alias_method_chain)
