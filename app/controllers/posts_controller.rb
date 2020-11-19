class PostsController < ApplicationController
    def index
        posts = Post.all 
        render json: posts
    end

    def show
        post = Post.find_by(id: params[:id])
        render json: post
    end

    def create
        post = Post.create(post_params)
        if post.valid?
            render json: post
        else
            render json: { error: 'failed to create post' }
        end
    end

    private 

    def post_params
        params.require(:post).permit(:text, :user_id)
    end
end
