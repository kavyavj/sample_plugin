class <%= migration_class_name %> < ActiveRecord::Migration
  def self.up
    create_table :test, :force => true do |t|
      t.column :test_id, :integer
      t.column :test_name, :string
 
    end
   
  end

  def self.down
    drop_table :tests
  end
end