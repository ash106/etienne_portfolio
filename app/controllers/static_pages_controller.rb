# require 'httparty'

class StaticPagesController < ApplicationController
  def home
    @home = true
    @photos = Photo.photos.rank(:photos_order)
    @about = Photo.about.rank(:about_order)
    @videos = Video.rank(:row_order).all
  end
end
