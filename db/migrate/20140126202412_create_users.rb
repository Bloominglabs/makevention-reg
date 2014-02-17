class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :active, :default => 0, :null => false
      t.datetime :created_at
      t.datetime :updated_at

      t.belongs_to :person
      
      t.timestamps
    end
      
    add_index(:users, :username, :unique => true)
  end
end
