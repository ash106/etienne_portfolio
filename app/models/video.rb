class Video < ActiveRecord::Base
  include RankedModel
  ranks :row_order
  validates :vimeo_url, presence: true
end
