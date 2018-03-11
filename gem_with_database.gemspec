# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gem_with_database/version"

Gem::Specification.new do |spec|
  spec.name          = "gem_with_database"
  spec.version       = GemWithDatabase::VERSION
  spec.authors       = ["Jeremy Kreutzbender"]
  spec.email         = ["jkreutzbender@truecar.com"]

  spec.summary       = "Adding ActiveRecord::Tasks::DatabaseTasks to a gem"
  spec.description   = "No need for Rails"
  spec.homepage      = "https://github.com/jer-k/gem_with_database"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'activerecord', '5.1.5'
  spec.add_dependency 'factory_bot', '4.8.2'

  spec.add_development_dependency "bundler", "1.16.1"
  spec.add_development_dependency "rake", "10.5.0"
  spec.add_development_dependency "rspec", "3.7.0"
  spec.add_development_dependency "rspec-expectations", "3.7.0"
  spec.add_development_dependency "rspec-support", "3.7.0"
  spec.add_development_dependency "rspec-core", "3.7.0"
  spec.add_development_dependency "rspec-mocks", "3.7.0"
  spec.add_development_dependency 'pg', '0.21'
  spec.add_development_dependency 'pry', '0.11.3'
  spec.add_development_dependency 'dotenv', '2.2.1'
  spec.add_development_dependency 'railties', '5.1.5'
end
