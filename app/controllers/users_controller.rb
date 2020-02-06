class UsersController < ApplicationController

    def create
    end

private

    def user_params
        params.require(:user).permit(:username, :password, :wallet)
    end

end
