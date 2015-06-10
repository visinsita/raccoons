class AddRaccoonToFurniture < ActiveRecord::Migration
  def change
    add_reference :furnitures, :raccoon, index: true, foreign_key: true
  end
end
