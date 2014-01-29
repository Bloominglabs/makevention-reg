class CreateExhibitResources < ActiveRecord::Migration
  def change
    create_table :exhibit_resources do |t|
      t.integer :electricalRequirements
      t.integer :noiseLevels
      t.integer :internet
      t.string :radioFrequencies
      t.integer :safetyIssues
      t.string :safetyIssuesDescription
      t.boolean :water
      t.boolean :exhaust
      t.boolean :sanitation
      t.string :other

      t.timestamps
    end
  end
end
