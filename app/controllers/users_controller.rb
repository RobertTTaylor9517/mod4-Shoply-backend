class UsersController < ApplicationController
    skip_before_action :authenticate_request, only: [:create]

    def create
        puts(params)
        user = User.new(username: params[:username], password: params[:password], wallet: params[:wallet])

        if user.save!
            token = JsonWebToken.encode(user_id: user.id)
            puts(token)
            render json: {auth_token: token, wallet: user.wallet}
        end
    end

    def show
        user = User.find_by(id: current_user.id)
        render json: user.to_json(include: [:lists, reviews: {
            include: {
                user: {
                    only: [:username]
                },
                product: {
                    only: [:id, :name]
                }
            }
        }])
    end

    def purchase
        user = User.find_by(id: current_user.id)

        cost = params[:cost].to_i
        newAmount = user['wallet'] - cost

        if(newAmount < 0)
            render json: {error: 'Transaction Failed'}
        else
            user.wallet = newAmount
            if user.save
                render json: user
            else
                render json: {error: user.errors.full_messages}
            end
        end

    end

    def update
        user = User.find_by(id: params[:id])

        if user.update(user_params)
            render json: user.to_json(include: [:lists, reviews: {
                include: {
                    user: {
                        only: [:username]
                    }
                }
            }])
        else
            render json: {error: user.errors.full_messages}
        end
    end

    def delete
        user = User.find_by(id: params[:id])

        if user.destroy
            render json: {message: 'Delete Successful'}
        else
            render json: {message: 'Delete Not Successful'}
        end

    end

private

    def user_params
        params.require(:user).permit(:username, :password, :wallet)
    end

end
