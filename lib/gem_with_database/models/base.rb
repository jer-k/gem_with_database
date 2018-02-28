require 'active_record'

module GemWithDatabase
  class Base < ::ActiveRecord::Base
    self.abstract_class = true
  end
end
