class UsersController < ApplicationController
	include ApplicationHelper
	before_filter :set_user
	def show
		@income_items = IncomeItem.where(:user_id => current_user.id)
		@expense_items = ExpenseItem.where(:user_id => current_user.id)
		@expense_categories = ExpenseCategory.where(:user_id => current_user.id)
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
