class CreateFacilityServices < ActiveRecord::Migration[5.0]
  def self.up
    create_table :facility_services do |t|
      t.column :facility_id, :string
      t.column :service_id, :integer
      t.column :service_description, :string

      t.timestamps
    end
  end
  def self.down
  	drop_table :facility_services
  end
end
