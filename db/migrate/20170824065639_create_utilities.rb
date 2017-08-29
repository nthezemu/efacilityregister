class CreateUtilities < ActiveRecord::Migration[5.0]
  def self.up
    create_table :utilities do |t|
      t.column :name, :string
      t.column :provider, :string
      
      t.timestamps
    end
  end
  def self.down
  	drop_table :utilities
  end
end
