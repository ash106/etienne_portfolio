class Photo < ActiveRecord::Base
  CATEGORIES = ["Photos", "About"]

  has_attached_file :image, styles: {
    thumb: '100x100>',
    medium: '300x300>',
    large: '800x800>'
  }

  validates_attachment :image, presence: true, content_type: { content_type: /\Aimage\/.*\Z/ }
end
