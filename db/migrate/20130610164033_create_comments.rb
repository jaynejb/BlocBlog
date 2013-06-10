class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.text :body
      t.integer :user_id
      t.date :create_date
      t.date :delete_date

      t.timestamps
    end
  end
end
