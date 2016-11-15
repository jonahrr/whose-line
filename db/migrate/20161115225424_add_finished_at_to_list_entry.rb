class AddFinishedAtToListEntry < ActiveRecord::Migration
  def change
    add_column :list_entries, :finished_at, :datetime
  end
end
