class RamenShopsController < ApplicationController
  def index
    @ramen_shops = RamenShop.all
  end
  
  def new
    @ramen_shop = RamenShop.new
  end

  def create
    RamenShop.create(ramen_params)
    redirect_to ramen_shops_path
  end

  def show
    @ramen_shop = RamenShop.find(params[:id])
    @review = Review.new
  end




  private
  def ramen_params
    params.require(:ramen_shop).permit(:name)
  end
end
