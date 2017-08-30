class CreateFacilities < ActiveRecord::Migration[5.0]
  def self.up
    create_table :facilities do |t|
      t.column :facility_id, :string
      t.column :name, :string
      t.column :description, :string
      t.column :cell_location, :string
      t.column :closing_date, :date
      t.column :opening_date, :date
      t.column :parent_facility, :string
      t.column :email_address, :string
      t.column :phone_number, :string
      t.column :type_code, :string
      t.column :status, :string
      t.column :service_id, :string
      t.column :created_by, :string
      t.column :approved_by, :string
      t.timestamps
    end 
 end
 def self.down
    drop_table :facilities	
 end
end
