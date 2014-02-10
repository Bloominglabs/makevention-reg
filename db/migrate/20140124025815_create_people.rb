class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      #t.string :username
      t.string :firstName
      t.string :lastName
      #t.organization :organizations
      #t.registration :annualRegistrations
      t.datetime :birthdate
      t.string :emergencyContact
      t.string :selfNotes
      t.boolean :active
      t.string :adminNotes
      t.belongs_to :contact_info
      t.timestamps
    end
  end
end
