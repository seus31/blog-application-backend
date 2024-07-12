module Api
  module V1
    class PostsController < ApplicationController
      def index
        posts = Post.all
        render json: posts, each_serializer: PostSerializer
      end
    end
  end
end

