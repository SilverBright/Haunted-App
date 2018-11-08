class UsersController < ApplicationController

def show
	@user = User.find(params[:id])
	@comment = Comment.find(params[:id])

end


end