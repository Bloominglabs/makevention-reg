class CreateContactInfos < ActiveRecord::Migration
  def change
    create_table :contact_infos do |t|
      t.string :email
      t.string :phone
      t.string :website
      t.string :address_street_1
      t.string :address_street_2
      t.string :address_city
      t.string :address_state
      t.string :address_zip

      t.integer :current, :default => 0, :null => false

      t.timestamps
    end
  end
end
