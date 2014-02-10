class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.boolean :active
      t.boolean :verified
      t.datetime :created_at
      t.datetime :updated_at
      t.belongs_to :person
      t.timestamps
    end
  end
end
