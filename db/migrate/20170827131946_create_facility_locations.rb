class CreateFacilityLocations < ActiveRecord::Migration[5.0]
  def self.up
    create_table :facility_locations do |t|
      t.column :facility_id, :string
      t.column :location_id, :integer
      t.column :population, :integer
      t.timestamps
    end
  end
  def self.down
  	drop_table :facility_locations
  	
  end
end
