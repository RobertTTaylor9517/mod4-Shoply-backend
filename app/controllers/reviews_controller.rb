class ReviewsController < ApplicationController
    skip_before_action :authenticate_request
    def index
        reviews = Review.where(product_id: params[:product_id])
        render json: reviews.to_json(include: {
            user: {
                only: [:username]
            }
        })
    end

    def create
        user_auth = JsonWebToken.decode(params[:key])
        user_id = user_auth["user_id"]

        review = Review.new(comment: params[:comment], rating: params[:rating], product_id: params[:product_id], user_id: user_id)

        if review.save!
            render json: review.to_json(include: {
                user: {
                    only: [:username]
                }
            })
        end
    end

private

    def review_params
        params.require(:review).permit(:comment, :rating, :product_id, :key)
    end
end
