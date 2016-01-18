class StaticPagesController < ApplicationController
  def home
    @home = true
    @photos = Photo.all
  end
end
