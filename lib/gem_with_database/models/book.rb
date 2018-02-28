require 'gem_with_database/models/base'

module GemWithDatabase
  class Book < Base
    belongs_to :author
  end
end
