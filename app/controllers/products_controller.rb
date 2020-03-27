class ProductsController < ApplicationController

	def index
		@product = Product.where(menu_id: params[:menu_id])	
	end
end