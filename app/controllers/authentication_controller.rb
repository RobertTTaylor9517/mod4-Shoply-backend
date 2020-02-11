class AuthenticationController < ApplicationController
    skip_before_action :authenticate_request

    def authenticate 
        puts(params)
        command = AuthenticateUser.call(params[:username], params[:password])

        if command.success?
            render json: {auth_token: command.result}
        else
            render json: {error: 'Inavlid Login'}
        end
    end
end