class CategoryRestaurantsController < ApplicationController
  before_action :set_category

  def index
    @restaurants = @category.restaurants
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end
end
