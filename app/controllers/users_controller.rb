class UsersController < ApplicationController
	include ApplicationHelper
	before_filter :set_user
	def show
	end

	def update
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
    		render "edit"
      end
    end
  end

	private

	def set_user
		@user = current_user
	end

end
