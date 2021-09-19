#Toy model
class Toy < ApplicationRecord
   belongs_to :category
   validates_presence_of :title
   validates_numericality_of :price, :message=>"Error Message"
end
