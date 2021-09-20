class CategoriesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :category_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_incorrect_attributes
    # GET /categories
  def index
    categories = Category.all
    render json: categories, only: [:name, :img_url]
  end

  def create
    category = Category.create(category_params)
    render json: category, status: :created

end

  def show
    category = find_category
    render json: category, only: [:name, :img_url, :price]
   end

  def updated
   category = find_category
   category.update(category_params)
  render json: category
  end

  def destroy
   category = find_category
   category.destroy
  head :no_content
  end

private

  def category_params
    params.require(:category).permit(:name, :img_url, :quantity, :price, :category_id)
  end

  def find_category
   Category.find(params[:id])
  end

  def category_not_found
    render json: {error: "category not found"}, status: :not_found
  end

  def render_incorrect_attributes(invalid)
    render json: { error: invalid.record.errors }, status: :incorrect_attributes
  end
end
