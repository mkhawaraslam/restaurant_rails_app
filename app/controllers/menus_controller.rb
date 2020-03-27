class MenusController < ApplicationController

	before_action :authenticate_user!

	def index
		@menu = Menu.all
	end

end