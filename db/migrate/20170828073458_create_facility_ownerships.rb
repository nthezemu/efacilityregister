class CreateFacilityOwnerships < ActiveRecord::Migration[5.0]
  def self.up
    create_table :facility_ownerships do |t|
      t.column :facility_id, :string
      t.column :ownership_id, :integer
      t.column :ownership_type, :string

      t.timestamps
    end
  end
  def self.down
  	drop_table :facility_ownerships
  end
end
