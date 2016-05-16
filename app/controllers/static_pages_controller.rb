# require 'httparty'

class StaticPagesController < ApplicationController
  def home
    @home = true
    @photos = Photo.photos.rank(:photos_order)
    @skiing = Photo.skiing.rank(:skiing_order)
    @videos = Video.rank(:row_order).all
  end

  def videos
    @home = true
    @videos = Video.rank(:row_order).all
  end

  def photos
    @home = true
    @photos = Photo.photos.rank(:photos_order)
  end

  def skiing
    @home = true
    @skiing = Photo.skiing.rank(:skiing_order)
  end
end
