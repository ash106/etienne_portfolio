class Photo < ActiveRecord::Base
  include RankedModel

  CATEGORIES = ["Photos", "Skiing"]

  scope :photos, -> { where(category: "Photos") }
  scope :skiing, -> { where(category: "Skiing") }

  ranks :photos_order, scope: :photos
  ranks :skiing_order, scope: :skiing

  has_attached_file :image, styles: {
    medium: '300x300>',
    large: '800x800>'
  }

  validates_attachment :image, presence: true, content_type: { content_type: /\Aimage\/.*\Z/ }
end
