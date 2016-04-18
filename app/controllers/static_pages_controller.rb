# require 'httparty'

class StaticPagesController < ApplicationController
  def home
    @home = true
    @photos = Photo.photos.rank(:photos_order)
    @about = Photo.about.rank(:about_order)
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

  def about
    @home = true
    @about = Photo.about.rank(:about_order)
  end
end
