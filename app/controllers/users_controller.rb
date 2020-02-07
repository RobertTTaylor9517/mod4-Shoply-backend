class UsersController < ApplicationController

    def create
        user = User.new(user_params)
        if user.save!
            render json: user
        else
            render json: {error: 'Invalid'}
        end
    end

private

    def user_params
        puts(params)
        params.require(:user).permit(:username, :password, :wallet)
    end

end
