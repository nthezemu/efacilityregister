class CreateServices < ActiveRecord::Migration[5.0]
  def self.up
    create_table :services do |t|
      t.column :name, :string

      t.timestamps
    end
  end
  def self.down
  	drop_table :services
  end
end
