class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :username, :limit => 200
      t.text :password_digest
      t.integer :active, :default => 0, :null => false
      t.datetime :created_at
      t.datetime :updated_at

      t.belongs_to :person
      
      t.timestamps
    end
      
    add_index(:users, :username, :unique => true)
  end
end
