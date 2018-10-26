class CommentsController < ApplicationController

	def create
    	comment = Comment.create(comment_params)
    	redirect_to comment.haunt
  	end


	private

	def comment_params
		params.require(:comment).permit(:content, rating, :haunt_id, :user_id)
		# params.require(:comment).permit(:content, :rating)

	end



end