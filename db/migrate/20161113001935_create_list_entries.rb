class CreateListEntries < ActiveRecord::Migration
  def change
    create_table :list_entries do |t|
      t.integer :speaker_id
      t.integer :list_id

      t.timestamps null: false
    end
  end
end
