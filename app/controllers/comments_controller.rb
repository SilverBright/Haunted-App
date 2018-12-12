class CommentsController < ApplicationController

	def create
		@haunt = Haunt.find(params[:haunt_id])

		########### MOHAMMAD'S COMMENT.CONTENT & USER.EMAIL SOLUTION: ###########
		@comment = current_user.comments.create(content: comment_params["content"], haunt_id: @haunt.id)

		########### JENN'S ALTERNATE TO MOHAMMAD'S SOLUTION: ###########
		# @comment = current_user.comments.build(comment_params)
		# @comment.haunt = @haunt
		# @comment.save #(returns a value of true if saved)

		if	@comment.save  
			flash[:notice] = "Success!!"

			########### TYLER'S 'SHOW HAUNT & COMMENT' SOLUTION: ###########
			redirect_to haunt_comment_path(@haunt, @comment)
		else
			render :new
		end
  	end

	def index
		@haunt = Haunt.find(params[:haunt_id])
	end

	def new
		@haunt = Haunt.find(params[:haunt_id])
		@comment = @haunt.comments.build
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
			flash[:notice] = "Foolish mortal. You can only edit your own entries!"
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
	 	if @comment && @comment.user == current_user
    		@comment.destroy
    		flash[:notice] = "Success!"
    		redirect_to haunt_comments_path
    	else
    		flash[:notice] = "Foolish mortal. You can only delete your own entries!"
    		redirect_to haunt_comment_path
    	end
  	end


	private

	def comment_params
		params.require(:comment).permit(:content)
	end

end