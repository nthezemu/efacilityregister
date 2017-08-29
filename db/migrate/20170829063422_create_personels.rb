class CreatePersonels < ActiveRecord::Migration[5.0]
  def self.up
    create_table :personels do |t|
      t.column :facility_id, :string
      t.column :username, :string
      t.column :password, :string
      t.column :block, :string
      t.column :block_reason, :string
      t.timestamps
    end
  end
  def self.down
  	drop_table :personels
  end
end
