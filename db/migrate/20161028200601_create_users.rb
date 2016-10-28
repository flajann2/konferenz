class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :id
      t.string :username, limit: 30
      t.string :name, limit: 70
      t.string :password_digest

      t.timestamps
    end
    add_index :users, :id, unique: true
    add_index :users, :username, unique: true
    add_index :users, :name
  end
end
