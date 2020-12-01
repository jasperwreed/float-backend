class FollowershipController < ApplicationController
    skip_before_action :authorized

    def index
        followerships = Followership.all
        render json: { followerships: followerships}
    end

    def create
        followership = Followership.create(followership_params)
        render json: {followership: followership}
    end

    def destroy
        followership = Followership.find(params[:id])
        followership.destroy
        render json: { message: 'unfollowed user'}
    end

    private 

    def followership_params
        params.permit(:follower_id, :followee_id, :followership)
    end
end
