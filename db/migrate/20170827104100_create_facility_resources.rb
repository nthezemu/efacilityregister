class CreateFacilityResources < ActiveRecord::Migration[5.0]
  def self.up
    create_table :facility_resources do |t|
      t.column :facility_id, :string
      t.column :resource_id, :integer
      t.column :resource_quantity, :integer
      t.column :resource_description, :string

      t.timestamps
    end
  end
  def self.down
  	drop_table :facility_resources
  end
end
