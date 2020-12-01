class CreateFollowerships < ActiveRecord::Migration[6.0]
  def change
    create_table :followerships do |t|
      t.integer :follower_id
      t.integer :followee_id

      t.timestamps
    end
  end
end
