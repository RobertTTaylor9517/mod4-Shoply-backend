class ReviewsController < ApplicationController
    skip_before_action :authenticate_request, only: [:index]
    def index
        reviews = Review.where(product_id: params[:product_id])
        render json: reviews.to_json(include: {
            user: {
                only: [:username]
            }
        })
    end

    def create

        review = Review.new(review_params)
        review['user_id'] = current_user.id

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
        params.require(:review).permit(:comment, :rating, :product_id)
    end
end