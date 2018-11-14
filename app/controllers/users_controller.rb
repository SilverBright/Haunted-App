class UsersController < ApplicationController

	def index
		@haunts = Haunt.all
		@comments = Comment.all
	end

	def show
		@user = User.find(params[:id])
		@comment = Comment.find(params[:id])
		@haunt = Haunt.find(params[:id])
	end

end