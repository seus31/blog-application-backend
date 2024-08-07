module Api
  module V1
    class CategoriesController < BaseController
      def create
        category = Category.new(post_params)
        if category.save
          render json: category, status: :created
        else
          render json: category.errors, status: :unprocessable_entity
        end
      end

      def index
        categories = Category.all
        render json: categories, each_serializer: CategorySerializer
      end

      private

      def post_params
        params.required(:category).permit(:category_name)
      end
    end
  end
end

