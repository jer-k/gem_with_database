require "bundler/setup"
require "gem_with_database"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

ENV['ENV'] = 'test' # Ensure we don't drop the development database

require 'bundler/gem_tasks'
require_relative '../support/active_record_rake_tasks'
task :environment

Rake::Task['db:drop'].invoke
Rake::Task['db:create'].invoke
Rake::Task['db:schema:load'].invoke
