class Speaker < ActiveRecord::Base
  has_many :list_entries
  has_many :lists, through: :list_entries
end
