class ReviewsController < ApplicationController

	def index
		@reviews = Review.all
	end

	def new
		@review = current_user.reviews.build
		@review = Review.new
	end

	def create
		@review = current_user.reviews.build(review_params)
		if @review.save
			redirect_to reviews_path
		else 
			render :new
		end
	end

	# # def show
	# # 	@haunt = Haunt.find(params[:id])
	# # end



	# def edit 
	# 	@haunt = Haunt.find(params[:id])
	# 	if @haunt && @haunt.user == current_user
	# 	else
 #    		flash[:error] = "Foolish mortal. You can only edit your own entries!"
 #    		redirect_to haunts_path
 #    	end
	# end

	# def update
	# 	@haunt = Haunt.find(params[:id])
	# 	flash[:error] = "Success!"
	# 	redirect_to haunts_path
	# end

	#  def destroy
	#  	@haunt = Haunt.find(params[:id])
	#  	if @haunt && @haunt.user == current_user
 #    		@haunt.destroy
 #    	else
 #    		flash[:error] = "Foolish mortal. You can only delete your own entries!"
 #    		redirect_to haunts_path
  
 #    	end
 #  	end

	private

	def review_params
		params.require(:review).permit(:comment, :rating)
	end



end