class AddSpeakersToDiscussions < ActiveRecord::Migration
  def change
    add_column :discussions, :speakers, :text
  end
end
