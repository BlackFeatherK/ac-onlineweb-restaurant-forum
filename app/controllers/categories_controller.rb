class CategoriesController < ApplicationController
  before_action :set_category

  def show
    @restaurants = @category.restaurants
    @categories = Category.all
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

end
