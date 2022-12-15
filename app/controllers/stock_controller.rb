class StockController < ApplicationController
  require 'rest-client'
  def show
    stock_alias = params[:alias]
    url = "localhost:1234/stocks/#{stock_alias}"
    response = RestClient.get(url)
    @stock = JSON.parse(response)
  end

  def index
    url = 'localhost:1234/stocks'
    response = RestClient.get(url)
    @stocks = JSON.parse(response)
  end
end
