class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post
      t.references :user
      t.text :comment
      t.date :create_date
      t.date :delete_date

      t.timestamps
    end
    add_index :comments, :post_id
    add_index :comments, :user_id
  end
end
