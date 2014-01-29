class CreateExhibitSpaces < ActiveRecord::Migration
  def change
    create_table :exhibit_spaces do |t|
      t.integer :floorSpaceRequirement
      t.string :floorSpaceNote
      t.string :activities
      t.integer :tableCount
      t.integer :chairCount
      t.integer :locationPreference

      t.timestamps
    end
  end
end
