class Speaker < ActiveRecord::Base
  has_many :list_entries
end
