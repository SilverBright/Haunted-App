class CommentsController < ApplicationController



	private

	def review_params
		params.require(:comment).permit(:content, :rating)
	end



end