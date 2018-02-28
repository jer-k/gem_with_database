require 'gem_with_database/models/base'

module GemWithDatabase
  class Author < Base
    has_many :books
  end
end
