class AdmaboutsController < ApplicationController
	before_action :authenticate_user!

	def index
		render layout: "adminarea"
		@admabouts = Admabout.all
	end

	def show
		render layouyt: "adminarea"
		@admabout = Admabout.find(params[:id])
	end
		
	def new
		render layout: "adminarea"
	end

	def edit
		render layout: "adminarea"
		@admabout = Amdabout.find(params[:id])
	end

	def create 
		@admabout = Admabout.new(admabout_params)
		@admabout.save
		redirect_to @admabout
	end

	def update
		@admabout = Admabout.find(params[:id])
		if @admabout.update(admabout_params)
			redirect_to @admabout
		else
			render 'edit'
		end
	end

	private
		def admabout_params
			params.require(:admabout).permit(:text)
		end
end
