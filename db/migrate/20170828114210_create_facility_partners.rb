class CreateFacilityPartners < ActiveRecord::Migration[5.0]
  def self.up
    create_table :facility_partners do |t|
      t.column :facility_id, :string
      t.column :partner_id, :integer
      t.timestamps
    end
  end
  def self.down
  	drop_table :facility_partners
  end
end
