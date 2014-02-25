require 'rspec/collection_matchers/version'
require 'rspec/collection_matchers/matchers'
require 'rspec/collection_matchers/have'

begin
  require 'rspec/collection_matchers/rails/have_extensions'
rescue LoadError
  # must not have rails
end
