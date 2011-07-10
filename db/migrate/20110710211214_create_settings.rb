class CreateSettings < ActiveRecord::Migration
  def self.up
    create_table :settings do |t|
      t.string :name, :null => false
      t.string :value, :null => false
      t.string :kind, :null => false
      
      t.timestamps
    end
  end

  def self.down
    drop_table :settings
  end
end
