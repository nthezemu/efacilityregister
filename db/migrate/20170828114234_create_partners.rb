class CreatePartners < ActiveRecord::Migration[5.0]
  def self.up
    create_table :partners do |t|
      t.column :name, :string
      t.column :origin, :string
      t.timestamps
    end
  end
  def self.down
  	drop_table :partners
  end
end
