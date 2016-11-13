class ListEntry < ActiveRecord::Base
  belongs_to :list, required: true
  belongs_to :speaker, required: true
end
