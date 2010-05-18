class CreateUnits < ActiveRecord::Migration
  def self.up
    create_table :units do |t|
      t.integer :designation
      t.string :unit_type
      t.string :council
      t.string :district
      t.boolean :active
      t.timestamps
    end
  end
  
  def self.down
    drop_table :units
  end
end
