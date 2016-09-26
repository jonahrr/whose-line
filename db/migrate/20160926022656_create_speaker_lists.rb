class CreateSpeakerLists < ActiveRecord::Migration
  def change
    create_table :speaker_lists do |t|
      t.string :topic

      t.timestamps null: false
    end
  end
end
