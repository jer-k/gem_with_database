require 'spec_helper'

RSpec.describe GemWithDatabase::Author do
  it 'is a test author' do
    author = FactoryBot.create(:gem_with_database_author)
    expect(author.name).to eq('Test Author')
  end
end
