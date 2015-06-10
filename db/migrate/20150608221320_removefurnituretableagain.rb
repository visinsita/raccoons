class Removefurnituretableagain < ActiveRecord::Migration
  def change
      drop_table :furnitures
  end
end
