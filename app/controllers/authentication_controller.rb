class AuthenticationController < ApplicationController
    skip_before_action :authenticate_request

    def authenticate 
        puts(params)
        command = AuthenticateUser.call(params[:username], params[:password])

        if command.success?
            temp = JsonWebToken.decode(command.result)
            user = User.find_by(id: temp['user_id'])

            render json: {auth_token: command.result, wallet: user.wallet}
        else
            render json: {error: 'Inavlid Login'}
        end
    end
end