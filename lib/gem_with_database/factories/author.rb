require 'factory_bot'

FactoryBot.define do
  factory :gem_with_database_author, class: GemWithDatabase::Author do
    name 'Test Author'
    age 1
  end
end
