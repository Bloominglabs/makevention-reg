class CreateContactInfos < ActiveRecord::Migration
  def change
    create_table :contact_infos do |t|
      t.string :email
      t.string :phone
      t.string :website
      t.string :addressStreet1
      t.string :addressStreet2
      t.string :addressCity
      t.string :addressState
      t.string :addressZip

      t.timestamps
    end
  end
end
