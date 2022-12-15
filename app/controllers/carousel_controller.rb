class CarouselController < ApplicationController
  require 'rest-client'

  def index
    url = 'localhost:1234/carousel'
    response = RestClient.get(url)
    @carousel_stocks = JSON.parse(response)
  end
end
