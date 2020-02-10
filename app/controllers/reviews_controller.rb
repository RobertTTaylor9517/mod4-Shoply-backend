class ReviewsController < ApplicationController
    def index
        reviews = Review.where(product_id: params[:product_id])
        render json: reviews
    end

    def create
        
    end

private

    def review_params
        params.require(:review).permit(:comment, :rating, :product_id)
    end
end
