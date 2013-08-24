class CommentsController < ApplicationController
	def create
		@user = User.find(current_user)
		@two = @user.twos.find(params[:id])
		
   		@comment = @user.comments.create(params[:comment])
   		redirect_to root_path
	end
end
