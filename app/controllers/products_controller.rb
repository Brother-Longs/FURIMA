class ProductsController < ApplicationController

	def index
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		@product.customer_id = current_customer.id
		if
			@product.save
			redirect_to products_path
		else
			render "new"
		end
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def product_params
		params.require(:product).permit(:name, :price, :description, :status, :size, :shipping_cost, :shipping_days, :prefecture_id, :judgment, :shipping_id)
	end

end
