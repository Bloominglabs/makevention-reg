class CreateOrgPeople < ActiveRecord::Migration
  def change
    create_table :org_people do |t|
      t.belongs_to :organization
      t.belongs_to :person
      t.integer :org_role, :default => 0, :null => false
      t.integer :active, :default => 0, :null => false

      t.timestamps
    end
    add_index(:org_people, [:organization_id, :person_id], :unique => true)
  end
end
