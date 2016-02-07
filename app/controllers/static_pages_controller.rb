# require 'httparty'

class StaticPagesController < ApplicationController
  def home
    @home = true
    @photos = Photo.photos.rank(:photos_order)
    @about = Photo.about
    @videos = Video.rank(:row_order).all
  end
end
