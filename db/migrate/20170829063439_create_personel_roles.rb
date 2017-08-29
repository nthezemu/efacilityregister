class CreatePersonelRoles < ActiveRecord::Migration[5.0]
  def self.up
    create_table :personel_roles do |t|
      t.column :person_id, :integer
      t.column :role_id, :integer
      t.timestamps
    end
  end
  def self.down
  	drop_table :personel_roles
  end
end
