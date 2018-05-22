$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'bundler/setup'
require 'pry'
require 'pubg'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expose_dsl_globally = true
end
