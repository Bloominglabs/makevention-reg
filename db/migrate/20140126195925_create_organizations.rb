class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      
      t.belongs_to :contact_info
      
      t.timestamps
    end
  end
end
