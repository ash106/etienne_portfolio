class Photo < ActiveRecord::Base
  include RankedModel

  CATEGORIES = ["Photos", "Skiing", "About"]

  scope :photos, -> { where(category: "Photos") }
  scope :skiing, -> { where(category: "Skiing") }
  scope :about, -> { where(category: "About") }

  ranks :photos_order, scope: :photos
  ranks :skiing_order, scope: :skiing
  ranks :about_order, scope: :about

  has_attached_file :image, styles: {
    small: '300>',
    medium: '650>',
    large: '1000>'
  }

  validates_attachment :image, presence: true, content_type: { content_type: /\Aimage\/.*\Z/ }
end
