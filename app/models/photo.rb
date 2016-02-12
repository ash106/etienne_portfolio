class Photo < ActiveRecord::Base
  include RankedModel

  CATEGORIES = ["Photos", "About"]

  scope :photos, -> { where(category: "Photos") }
  scope :about, -> { where(category: "About") }

  ranks :photos_order, scope: :photos
  ranks :about_order, scope: :about

  has_attached_file :image, styles: {
    medium: '300x300>',
    large: '800x800>'
  }

  validates_attachment :image, presence: true, content_type: { content_type: /\Aimage\/.*\Z/ }
end
