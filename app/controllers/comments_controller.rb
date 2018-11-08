require 'pry'

class CommentsController < ApplicationController

	def index
		@comments = Comment.all
		@haunt = Haunt.find(params[:haunt_id])
		# @haunts = Haunt.all
	end

	def new
		@haunt = Haunt.find(params[:haunt_id])
		@comment = current_user.comments.build
	end


	def create
		@haunt = Haunt.find(params[:haunt_id])
		@comment = current_user.comments.create(comment_params.merge(user_id: current_user.id))
		if @comment.content.blank? 
			flash[:error] = "Oops!  You didn't fill out your review."
			redirect_to new_haunt_comment_path
		else
    	# comment = comments.build(comment_params)
    	# binding.pry
    	redirect_to haunt_comment_path(@haunt, @comment)
    	end
  	end

  	def show
  		@haunt = Haunt.find(params[:haunt_id])
  		@comment = Comment.find(params[:id])
  	end

  	def edit 
  		@haunt = Haunt.find(params[:haunt_id])
		@comment = Comment.find(params[:id])
		if @comment && @comment.user == current_user

		 else
    		 flash[:error] = "Foolish mortal. You can only edit your own entries!"
    		 redirect_to haunt_comment_path
    	 end
	end

	def update
		@haunt = Haunt.find(params[:haunt_id])
		@comment = Comment.find(params[:id])
		if @comment && @comment.user == current_user
		@comment.update(comment_params)
		flash[:notice] = "Success!"
		redirect_to haunt_comment_path
		end
	end

	 def destroy
	 	@haunt = Haunt.find(params[:haunt_id])
	 	@comment = Comment.find(params[:id])
	 	if @comment && @comment.user.email == current_user
    		@comment.destroy
    		# redirect_to comments_path
  
    	else
    		flash[:error] = "Foolish mortal. You can only delete your own entries!"
    		# redirect_to comments_path
  
    	end
  	end

	private

	def comment_params
		params.require(:comment).permit(:content)
		# params.require(:comment).permit(:content, :rating)

	end



end