class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :birthdate
      t.string :emergency_contact
      t.string :self_notes
      t.string :admin_notes

      t.belongs_to :contact_info
      
      t.timestamps
    end
  end
end
