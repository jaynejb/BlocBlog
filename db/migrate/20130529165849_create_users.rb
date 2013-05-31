class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :name
      t.string :email
      t.text :bio
      t.string :website
      t.string :twitter
      t.boolean :author
      t.references :post
      t.references :comment

      t.timestamps
    end
    add_index :users, :post_id
    add_index :users, :comment_id
  end
end
