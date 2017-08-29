class CreateOwnerships < ActiveRecord::Migration[5.0]
  def self.up
    create_table :ownerships do |t|
      t.column :name, :string
      t.timestamps
    end
  end
  def self.down
  	drop_table :ownerships
  end
end
