class UsersController < ApplicationController

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token({ user_id: @user.id })
            render json: { user: UserSerializer.new(@user), token: @token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenicate(params[:password])
            token = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), token: token}
        else
            render json: {error: "Incorrect Username or Password"}
        end
    end

    def update
        @user = User.find(params[:id])
        @user.update(edit_params)
        if @user.valid?
            @token = encode_token({ user_id: @user.id })
            render json: { user: UserSerializer.new(@user), token: @token}
        else
            render json: { error: 'failed to edit user' }, status: :not_acceptable
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :age, :bio, :username, :email, :password)
    end

    def edit_params
        params.require(:user).permit(:name, :bio)
    end
end
