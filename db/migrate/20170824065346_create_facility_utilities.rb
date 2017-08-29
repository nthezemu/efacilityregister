class CreateFacilityUtilities < ActiveRecord::Migration[5.0]
  def self.up
    create_table :facility_utilities do |t|
    	t.column :facility_id, :string
    	t.column :utility_id,  :integer
      t.column :utility_description, :string
      t.column :utility_status, :string


      t.timestamps
    end
  end
  def self.down
  	drop_table :facility_utilities
  end
end
