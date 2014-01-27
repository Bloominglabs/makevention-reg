class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.boolean :active
      t.boolean :verified
      t.datetime :signupDate

      t.timestamps
    end
  end
end
