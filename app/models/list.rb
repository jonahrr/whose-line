class List < ActiveRecord::Base
  has_many :list_entries
  has_many :speakers, through: :list_entries
end
