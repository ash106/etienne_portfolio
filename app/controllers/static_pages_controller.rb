# require 'httparty'

class StaticPagesController < ApplicationController
  def home
    @home = true
    @photos = Photo.where(category: "Photos")
    @about = Photo.where(category: "About")
    @videos = []
    videos = Video.all
    videos.each do |video|
      response = HTTParty.get("https://vimeo.com/api/oembed.json?url=#{video.vimeo_url}")
      @videos << JSON.parse(response.body)
    end
  end
end
