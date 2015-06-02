class Raccoon < ActiveRecord::Base
  
  has_many :furnitures
  
  validates :name, uniqueness: true
  
end
