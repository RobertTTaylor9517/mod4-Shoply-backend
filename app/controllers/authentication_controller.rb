class AuthenticationController < ApplicationController
    skip_before_action :authenticate_request

    def authenticate 
        puts(params)
        command = AuthenticateUser.call(params[:username], params[:password])

        if command.success?
            render json: {auth_token: command.result}
        end
    end
end