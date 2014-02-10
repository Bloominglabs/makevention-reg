class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :orgName
      t.belongs_to :contact_info
      t.timestamps
    end
  end
end
