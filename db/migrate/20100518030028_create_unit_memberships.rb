class CreateUnitMemberships < ActiveRecord::Migration
  def self.up
    create_table :unit_memberships do |t|
      t.integer :unit_id
      t.integer :person_id
      t.string :role
      t.boolean :active
      t.timestamps
    end
  end
  
  def self.down
    drop_table :unit_memberships
  end
end
