class UsersController < ApplicationController
    skip_before_action :authenticate_request

    def create
        user = User.new(user_params)
        if user.save!
            render json: user
        else
            render json: {error: 'Invalid'}
        end
    end

    def show
        user_id = JsonWebToken.decode(params[:key])
        puts(user_id)
    end

private

    def user_params
        params.require(:user).permit(:username, :password, :wallet)
    end

end
