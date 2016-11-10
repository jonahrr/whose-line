class CreateUserDiscussions < ActiveRecord::Migration
  def change
    create_table :user_discussions do |t|
      t.string :user_id
      t.string :discussion_id
      t.integer :times_spoken

      t.timestamps null: false
    end
  end
end
