require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

require './support/active_record_rake_tasks'
# Stub the :environment task for things like db:migrate & db:seed. Since this is a Gem we've explicitly required all
# dependent files in the needed places and we don't have to load the entire environment.
task :environment
