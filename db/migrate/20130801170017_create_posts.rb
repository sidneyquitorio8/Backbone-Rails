class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :user_id
      t.text :message

      t.timestamps
    end
  end
end
