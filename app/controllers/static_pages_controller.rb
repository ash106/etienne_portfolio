class StaticPagesController < ApplicationController
  def home
    @home = true
    @photos = Photo.where(category: "Photos")
    @about = Photo.where(category: "About")
  end
end
