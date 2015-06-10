class CreateFurnitures < ActiveRecord::Migration
  def change
    create_table :furnitures do |t|
      t.string :style
      t.string :kind

      t.timestamps null: false
    end
  end
end
