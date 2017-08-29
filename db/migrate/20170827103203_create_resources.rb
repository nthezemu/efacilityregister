class CreateResources < ActiveRecord::Migration[5.0]
  def self.up
    create_table :resources do |t|
      t.column :name, :string
      t.timestamps
    end
  end
  def self.down
  	drop_table :resources	
  end
end
