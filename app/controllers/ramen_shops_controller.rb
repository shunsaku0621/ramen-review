class RamenShopsController < ApplicationController
  def index
    @ramen_shops = RamenShop.all
  end
  
  def new
  end
end
