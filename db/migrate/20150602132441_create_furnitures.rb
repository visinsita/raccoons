class CreateFurnitures < ActiveRecord::Migration
  def change
    create_table :furnitures do |t|
      t.string :type
      t.string :style
      t.references :raccoon, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
