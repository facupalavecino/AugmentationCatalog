class EliminarTablaElements < ActiveRecord::Migration[5.1]
  def change
  	remove_column :augmentations,:elements 
  	drop_table :augmentation_elements
  end
end
