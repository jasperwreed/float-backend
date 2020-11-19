class CommentsController < ApplicationController
    def index
        comments = Comments.all 
        render json: comments
    end

    def show
        comment = Comment.find_by(id: params[:id])
        render json: comment
    end

    def create
        comment = Comment.create(comment_params)
        if comment.valid?
            render json: comment
        else
            render json: { error: 'failed to create comment' }
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:text, :user_id, :post_id)
    end
end
