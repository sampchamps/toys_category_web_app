class Toys < ActiveRecord::Migration[6.1]
  def self.up
      create_table :toys do |t|
         t.column :title, :string, :limit => 32, :null => false
         t.column :price, :float
         t.column :type_id, :integer
         t.column :description, :text
         t.column :created_at, :timestamp
      end
   end

   def self.down
      drop_table :toys
   end
end
