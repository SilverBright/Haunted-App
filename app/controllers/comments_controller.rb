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
		# @comment = Comment.new
	end


	def create
		@haunt = Haunt.find(params[:haunt_id])
		# @comment = current_user.comments.create(comment_params)
		@comment = current_user.comments.create(comment_params.merge(user_id: current_user.id))
    	# comment = comments.build(comment_params)
    	# binding.pry
    	redirect_to haunt_comment_path(@haunt, @comment)
  	end

  	def show
  		@haunt = Haunt.find(params[:haunt_id])
  		@comment = Comment.find(params[:id])

  	end

	private

	def comment_params
		params.require(:comment).permit(:content)
		# params.require(:comment).permit(:content, :rating)

	end



end