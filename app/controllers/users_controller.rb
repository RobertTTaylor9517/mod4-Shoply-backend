class UsersController < ApplicationController
    skip_before_action :authenticate_request

    def create
        puts(params)
        user = User.new(username: params[:username], password: params[:password], wallet: params[:wallet])

        if user.save!
            token = JsonWebToken.encode(user_id: user.id)
            puts(token)
            render json: {token: token}
        end
    end

    def show
        user = User.find_by(id: current_user.id)
        render json: user.to_json(include: [:lists, :reviews])
    end

private

    def user_params
        params.require(:user).permit(:username, :password, :wallet)
    end

end
