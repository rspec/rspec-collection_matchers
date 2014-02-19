require 'rspec/collection_matchers/have'

require 'active_support/concern'
require 'active_support/core_ext/module/aliasing'

module RSpec
  module CollectionMatchers
    module Rails
      module HaveExtensions
        extend ActiveSupport::Concern

        # @api private
        #
        # Enhances the failure message for `to have(n)` matchers
        def failure_message_with_errors_on_extensions
          return errors_on_message(:expected, ", got #{@actual}") if is_errors_on?
          failure_message_without_errors_on_extensions
        end

        # @api private
        #
        # Enhances the description for `to have(n)` matchers
        def description_with_errors_on_extensions
          return errors_on_message(:have) if is_errors_on?
          description_without_errors_on_extensions
        end

        included do
          alias_method_chain :failure_message, :errors_on_extensions
          alias_method_chain :description, :errors_on_extensions

          ## For RSpec 2.99 compatibility
          if instance_methods.include? :failure_message_for_should
            alias failure_message_for_should_with_errors_on_extensions failure_message_with_errors_on_extensions
            alias_method_chain :failure_message_for_should, :errors_on_extensions
            alias failure_message_without_errors_on_extensions failure_message_for_should_without_errors_on_extensions
          end
        end

        # @api private
        def is_errors_on?
          [:errors_on, :error_on].include? @collection_name
        end

        # @api private
        def errors_on_message(prefix, suffix = nil)
          "#{prefix} #{relative_expectation} #{@collection_name.to_s.gsub('_', ' ')} :#{@args[0]}#{suffix}"
        end
      end
    end
  end
end

RSpec::CollectionMatchers::Have.class_eval do
  include RSpec::CollectionMatchers::Rails::HaveExtensions
end
