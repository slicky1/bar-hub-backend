class ItemsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :item_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_incorrect_attributes

    def index
        items = Item.all
        render json: items, only: [:name, :img_url, :price]
        # render json: items
      end

      def create
          item = Item.create(item_params)
          render json: item, status: :created

      end

      def show
        item = find_item
        render json: item, only: [:name, :img_url, :price]
        # render json: item
      end

      def updated
        item = find_item
        item.update(item_params)
        render json: item
      end

      def destroy
        item = find_item
        item.destroy
        head :no_content
      end

      private

      def item_params
        params.require(:item).permit(:name, :img_url, :quantity, :price, :category_id)
      end

      def find_item
        Item.find(params[:id])
      end

      def item_not_found
        render json: {error: "item not found"}, status: :not_found
      end

      def render_incorrect_attributes(invalid)
        render json: { error: invalid.record.errors }, status: :incorrect_attributes
      end
end
