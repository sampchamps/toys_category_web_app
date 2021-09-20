class Types < ActiveRecord::Migration[6.1]
  def self.up
      create_table :types do |t|
         t.column :name, :string
      end
  
      Type.create :name => "Action figures"
      Type.create :name => "Animals"
      Type.create :name => "Cars and radio controlled"
      Type.create :name => "Construction toys"
      Type.create :name => "Creative toys"
      Type.create :name => "Spinning toys"
      Type.create :name => "Dolls"
      Type.create :name => "Educational toys"
      Type.create :name => "Electronic toys"
      Type.create :name => "Creative toys"
      Type.create :name => "Food-related toys"
      Type.create :name => "Games"
      Type.create :name => "Model building"
      Type.create :name => "Physical activity and dexterity"
      Type.create :name => "Puzzle/assembly"
      Type.create :name => "Science and optical"
      Type.create :name => "Sound toys"

  end

   def self.down
      drop_table :types
   end


end