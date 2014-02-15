class CreateAnnualRegistrations < ActiveRecord::Migration
  def change
    create_table :annual_registrations do |t|
      t.integer :event_id
      t.boolean :sales
      t.boolean :paid

      t.timestamps
    end
  end
end
