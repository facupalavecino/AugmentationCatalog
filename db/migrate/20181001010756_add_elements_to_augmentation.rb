class AddElementsToAugmentation < ActiveRecord::Migration[5.1]
  def change
  	add_column :augmentations,:elements,:augmentation_element
  	add_column :augmentation_elements,:augmentation_id,:augmentation
  end
end
