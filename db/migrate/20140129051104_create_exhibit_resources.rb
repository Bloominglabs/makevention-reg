class CreateExhibitResources < ActiveRecord::Migration
  def change
    create_table :exhibit_resources do |t|
      t.integer :electrical_requirements, :default => 0, :null => false
      t.integer :noise_levels, :default => 0, :null => false
      t.integer :internet, :default => 0, :null => false
      t.string :radio_frequencies
      t.integer :safety_issues, :default => 0, :null => false
      t.string :safety_issues_description
      t.boolean :water
      t.boolean :exhaust
      t.boolean :sanitation
      t.string :other

      t.timestamps
    end
  end
end
