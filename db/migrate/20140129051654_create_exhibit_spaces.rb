class CreateExhibitSpaces < ActiveRecord::Migration
  def change
    create_table :exhibit_spaces do |t|
      t.integer :floor_space_requirement
      t.string :floor_space_note
      t.string :activities
      t.integer :table_count
      t.integer :chair_count
      t.integer :location_preference, :default => 0, :null => false

      t.timestamps
    end
  end
end
