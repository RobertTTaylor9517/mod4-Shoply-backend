class ProductsController < ApplicationController
    skip_before_action :authenticate_request, only: [:index, :show, :category, :search]

    def index
        products = []
        Product.all.each do |prod|
            rates_total = 0
            prod.reviews.each do |rev|
                rates_total += rev.rating
            end
            if rates_total = 0
                prod['rating'] = rates_total
            else
                prod['rating'] = (rates_total / prod.reviews.count).round
            end
            
            products << prod
        end
 
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

    def category
        products = []
        if params[:category] === 'all'
            products = Product.all
        else
            products = Product.where(category: params[:category])
        end
        render json: products
    end

    def search
        products = Product.where("name LIKE ?", "%#{params[:search]}%")
        render json: products
    end

private

    def product_params
        params.require(:product).permit(:name, :price, :category, :description, :quantity)
    end

end
