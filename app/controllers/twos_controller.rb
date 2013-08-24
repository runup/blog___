#encoding: utf-8
class TwosController < ApplicationController
	def new
		@user = User.find(current_user)
   		@two = @user.twos.build(params[:two])
	end

	def create
		@user = User.find(current_user)
   		@two = @user.twos.create(params[:two])
   		redirect_to twos_path

	end

	def index
		@user = User.find(current_user)
		@two = @user.twos.all
	end

	def edit
		@user = User.find(current_user)
		@two = @user.twos.find(params[:id])
	end

	def update
		@user = User.find(current_user)		
		@cc=@user.twos.find(params[:id])
		@cc.update_attributes(params[:two])
		redirect_to twos_path
	end 


	def show
		@user = User.find(current_user)
		@two = @user.twos.find(params[:id])

		@comment = @user.comments.build(:user_id=>@user.id,:two_id=>@two.id)

		
	end

	def destroy
		@user = User.find(current_user)
		@user.twos.find(params[:id]).destroy
		redirect_to twos_path
	end

end
#current_user 替换成params[:user_id]
