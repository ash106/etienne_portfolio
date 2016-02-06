# require 'httparty'

class StaticPagesController < ApplicationController
  def home
    @home = true
    @photos = Photo.where(category: "Photos")
    @about = Photo.where(category: "About")
    @videos = Video.rank(:row_order).all
  end
end
