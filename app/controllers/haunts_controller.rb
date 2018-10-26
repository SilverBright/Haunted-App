class HauntsController < ApplicationController

	def index
		@haunts = Haunt.all
	end

	def new
		@haunt = current_user.haunts.build
		# @haunt = Haunt.new
	end

	def show
		@haunt = Haunt.find(params[:id])
	end

	def create
		@haunt = current_user.haunts.create(haunt_params.merge(user_id: current_user.id))
		# @haunt = current_user.haunts.build(haunt_params)
		# @haunt = Haunt.create(haunt_params)
		if @haunt.save
			redirect_to haunts_path
		else 
			render :new
		end
	end

	def edit 
		@haunt = Haunt.find(params[:id])
		if @haunt && @haunt.user == current_user

		else
    		flash[:error] = "Foolish mortal. You can only edit your own entries!"
    		redirect_to haunts_path
    	end
	end

	def update
		@haunt = Haunt.find(params[:id])
		if @haunt && @haunt.user == current_user
		@haunt.update(haunt_params)
		flash[:notice] = "Success!"
		redirect_to haunts_path
		end
	end

	 def destroy
	 	@haunt = Haunt.find(params[:id])
	 	if @haunt && @haunt.user == current_user
    		@haunt.destroy
    		redirect_to haunts_path
  
    	else
    		flash[:error] = "Foolish mortal. You can only delete your own entries!"
    		redirect_to haunts_path
  
    	end
  	end

	private

	def haunt_params
		params.require(:haunt).permit(:name, :location, :description)
	end



end
