class ProductsController < ApplicationController

	def index
		@q = Product.ransack(params[:q])
  		@products = @q.result(distinct: true)
	end

	def new
	end

	def create
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
    params.require(:product).permit(:name)
  end
end
