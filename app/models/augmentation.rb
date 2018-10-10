class Augmentation < ApplicationRecord
	has_one :augmentation_element

#has_attached_file :screenshot, :styles => { :small => "150x150>" },
#                  :url  => "/assets/augmentations/:id/:basename.:extension",
#                  :path => ":rails_root/public/assets/augmentations/:id/:basename.:extension"

#validates_attachment_presence :screenshot
#validates_attachment_size :screenshot, :less_than => 5.megabytes
#validates_attachment_content_type :screenshot, :content_type => ['image/jpeg', 'image/png']

end
