class CreateExhibitResources < ActiveRecord::Migration
  def change
    create_table :exhibit_resources do |t|
      t.integer :electrical_requirements
      t.integer :noise_levels
      t.integer :internet
      t.string :radio_frequencies
      t.integer :safety_issues
      t.string :safety_issues_description
      t.boolean :water
      t.boolean :exhaust
      t.boolean :sanitation
      t.string :other

      t.timestamps
    end
  end
end
