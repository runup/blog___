class StaticPagesController < ApplicationController
  def home
  	@user = User.find(current_user)
	@two = @user.twos.all
  end

  def help
  end
  
  def about
  end

  def contact
  end 

  
	
end
