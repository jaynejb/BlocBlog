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

      t.timestamps
    end
  end
end
