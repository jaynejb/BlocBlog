class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :author
      t.string :category
      t.references :user

      t.timestamps
    end
    add_index :posts, :user_id
  end
end
