class CreateEventRegistrations < ActiveRecord::Migration
  def change
    create_table :event_registrations do |t|            
      t.boolean :has_sales
      t.decimal :exhibit_rate, :precision => 8, :scale => 2
      t.decimal :pledge, :precision => 8, :scale => 2
      t.decimal :amount_paid, :precision => 8, :scale => 2
      t.boolean :paid_in_full
      
      t.integer :organizer, :default => 0, :null => false
      t.integer :sponsor, :default => 0, :null => false
      
      t.belongs_to :event
      t.belongs_to :organization
      
      t.timestamps
    end
    add_index(:event_registrations, [:event_id, :organization_id], :unique => true)
  end
end
