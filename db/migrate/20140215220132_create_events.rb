class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :reg_opens
      t.datetime :reg_closes
      t.datetime :event_starts
      t.datetime :event_ends

      t.timestamps
    end
  end
end
