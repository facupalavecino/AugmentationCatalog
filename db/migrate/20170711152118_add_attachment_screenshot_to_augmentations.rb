class AddAttachmentScreenshotToAugmentations < ActiveRecord::Migration[5.0]
  def self.up
    change_table :augmentations do |t|
      t.attachment :screenshot
    end
  end

  def self.down
    remove_attachment :augmentations, :screenshot
  end
end
