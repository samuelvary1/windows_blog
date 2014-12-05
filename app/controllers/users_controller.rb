class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	
  end

  def edit
  	@user = User.new(params[:user])
  	if @user.save
  		flash[:notice] = "Registration successful."
  		redirect_to root_url
  	else
  		render 'new'
  	end
	end
end
