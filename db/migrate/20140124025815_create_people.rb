class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :firstName
      t.string :lastName
      #t.ContactInfo :contactInfo
      #t.organization :organizations
      #t.registration :annualRegistrations
      t.datetime :birthdate
      t.string :emergencyContact
      t.string :selfNotes
      t.boolean :active
      t.string :adminNotes

      t.timestamps
    end
  end
end
