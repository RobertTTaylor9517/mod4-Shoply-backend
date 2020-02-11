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
        user_auth = JsonWebToken.decode(params[:key])
        puts(user_auth["user_id"])
        user = User.find_by(id: user_auth["user_id"])
        render json: user.to_json(include: [:lists, :reviews])
    end

private

    def user_params
        params.require(:user).permit(:username, :password, :wallet)
    end

end
