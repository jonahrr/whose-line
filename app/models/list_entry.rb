class ListEntry < ActiveRecord::Base
  belongs_to :speaker, required: true
  belongs_to :list, required: true
end
