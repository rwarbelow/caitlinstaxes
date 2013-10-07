class SessionsController < ApplicationController

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
      flash[:errors] = "Invalid Login"
      render 'sessions/new'
    end
  end
end
