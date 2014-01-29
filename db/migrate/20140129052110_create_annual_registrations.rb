class CreateAnnualRegistrations < ActiveRecord::Migration
  def change
    create_table :annual_registrations do |t|
      t.integer :eventId
      t.boolean :sales
      t.boolean :paid

      t.timestamps
    end
  end
end
