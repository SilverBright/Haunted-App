class HauntsController < ApplicationController

	def index
		@haunts = Haunt.all
	end

	def new
		@haunt = current_user.haunts.build
	end

	def show
		@haunt = Haunt.find(params[:id])
	end

	def create

		####### DEVISE SOLUTION FOR USER #############
		@haunt = current_user.haunts.create(haunt_params.merge(user_id: current_user.id))
		if !@haunt.valid?
			flash[:notice] = "Haunt name cannot be a duplicate & fields cannot be blank."
			render :new
		else 
			flash[:notice] = "Success!!"
			redirect_to haunt_path(@haunt)
		end
	end

	def edit 
		@haunt = Haunt.find(params[:id])
		 if @haunt.user == current_user
			
		 else
    		flash[:notice] = "Foolish mortal. You can only edit your own entries!"
    		redirect_to haunts_path
    	 end
	end

	def update
		@haunt = Haunt.find(params[:id])
		if @haunt && @haunt.user == current_user
			@haunt.update(haunt_params)
			flash[:notice] = "Success!"
			redirect_to haunts_path
		else
			flash[:notice] = "Foolish mortal. You can only edit your own entries!"
			redirect_to haunts_path
		end
	end

	def destroy
	 	@haunt = Haunt.find(params[:id])
	 	if @haunt && @haunt.user == current_user
    		@haunt.destroy
    		redirect_to haunts_path
    	else
    		flash[:notice] = "Foolish mortal. You can only delete your own entries!"
    		redirect_to haunts_path
    	end
  	end


	private

	def haunt_params
		params.require(:haunt).permit(:name, :location, :description)
	end

end
