class BrandsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :brand_not_found

    def index
        brands = Brand.all
        render json: brands 
      end

      def create
          brand = Brand.create(brand_params)
          render json: brand
      end

      def show
        brand = find_brand
        render json: brand

      
      end

      def updated
        brand = find_brand
        brand.update(brand_params)
        render json: brand

      

      end

      def destroy
        brand = find_brand
        user.destroy
        head :no_content

      
      end

      private

      def brand_params
        params.require(:brand).permit(:name, :img_url, :quantity, :price, :category_id)
      end

      def find_brand
        Brand.find(params[:id])
      end

      def brand_not_found
        render json: {error: "brand not found"}, status: :not_found
      end
end
