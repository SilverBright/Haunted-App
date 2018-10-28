class CommentsController < ApplicationController

	def index
		@comments = Comment.all
	end

	def new
		@comment = current_user.comments.build
		# @comment = Comment.new
	end


	def create
		@comment = current_user.comments.create(comment_params.merge(user_id: current_user.id))
    	# @comment = comments.build(comment_params)
    	# redirect_to comment.haunt
  	end


	private

	def comment_params
		params.require(:comment).permit(:content, rating, :haunt_id, :user_id)
		# params.require(:comment).permit(:content, :rating)

	end



end