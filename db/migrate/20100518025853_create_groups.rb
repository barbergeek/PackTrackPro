class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.string :name
      t.integer :unit_id
      t.string :group_type
      t.string :rank
      t.integer :event_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :groups
  end
end
