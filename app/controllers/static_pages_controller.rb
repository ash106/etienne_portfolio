# require 'httparty'

class StaticPagesController < ApplicationController
  def home
    @home = true
    @photos = Photo.photos
    @about = Photo.about
    @videos = Video.rank(:row_order).all
  end
end
