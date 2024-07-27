module Api
  module V1
    class PostsController < BaseController
      before_action :set_post, only: [:show]
      def index
        posts = Post.all
        render json: posts, each_serializer: PostSerializer
      end

      def create
        post = Post.new(post_params)
        if post.save
          render json: post, status: :created
        else
          render json: post.errors, status: :unprocessable_entity
        end
      end

      def show
        render json: @post
      end

      private

      def set_post
        @post = Post.find(params[:id])
      end

      def post_params
        params.required(:post).permit(:title, :body, :status)
      end
    end
  end
end

