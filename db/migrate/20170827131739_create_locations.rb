class CreateLocations < ActiveRecord::Migration[5.0]
  def self.up
    create_table :locations do |t|
      t.column :zone, :string
      t.column :district, :string
      t.column :area, :string
      
      t.timestamps
    end
  end
  def self.down
  	drop_table :locations
  end
end
