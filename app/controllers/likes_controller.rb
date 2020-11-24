class LikesController < ApplicationController
    def index
        likes = Like.all 
        render json: likes
    end

    def create
        like = Like.create(like_params)
        if like.valid?
            render json: like
        else
            render json: { error: 'failed to create like' }
        end
    end

    private 

    def like_params
        params.require(:like).permit(:user_id, :post_id)
    end
end
