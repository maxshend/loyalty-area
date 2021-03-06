# frozen_string_literal: true

require 'webmock/rspec'
require 'n_plus_one_control/rspec'

WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.default_formatter = :doc if config.files_to_run.size <= 5
  config.default_formatter = 'Fuubar' if config.files_to_run.size > 10
end
