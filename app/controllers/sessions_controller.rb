class SessionsController < ApplicationController
  include ApplicationHelper
	def new
		@user = User.new
	end

	def create
		@user = User.find_by_username(params[:user][:username])
  	if @user && @user.authenticate(params[:user][:password])
  		session[:user_id] = @user.id
      redirect_to @user
    else
      @user = User.new
      flash[:errors] = "Invalid Login. Please try again."
      render 'sessions/new'
    end
  end

  def destroy
   session.clear
   flash[:notice] = "Logout Successful."
   redirect_to root_path
  end

end
