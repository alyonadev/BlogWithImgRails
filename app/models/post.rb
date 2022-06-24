class Post < ApplicationRecord
  validates :title, :content, presence: true
  mount_uploader :image, ImageUploader
  has_rich_text :content
end
