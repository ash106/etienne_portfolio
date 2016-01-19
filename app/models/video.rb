class Video < ActiveRecord::Base
  validates :vimeo_url, presence: true
end
