class Post < ApplicationRecord
	belongs_to :user, required: true

	has_attached_file :image, styles: { medium: "400x400>", small: "300x300>" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
