class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :profile_pic
      t.string :header_image
      t.text :bio
      t.integer :age
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
