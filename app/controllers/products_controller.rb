class ProductsController < ApplicationController
    skip_before_action :authenticate_request, only: [:index, :show]

    def index
        products = Product.all 
        render json: products
    end

    def create
        product = Product.new(product_params)
        if product.save!
            render json: product
        else
            render json: {error: 'Product did not save'}
        end
    end

    def show
        product = Product.find_by(id: params[:id])
        render json: product
    end

    def update
        product = Product.find_by(id: params[:id])
        product.update(product_params)

        if product.save!
            render json: product
        else
            render json: {error: 'Product did not update'}
        end
    end

private

    def product_params
        params.require(:product).permit(:name, :price, :category, :description, :quantity)
    end

end
