class CategoriesController < ApplicationController
    # GET /categories
  def index
    categories = Category.all
    render json: categories, only: [:name, :img_url]
  end
end
