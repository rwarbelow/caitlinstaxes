class ExpenseCategoriesController < ApplicationController
  # GET /expense_categories
  # GET /expense_categories.json
  def index
    @expense_categories = ExpenseCategory.where(:user_id => current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @expense_categories }
    end
  end

  # GET /expense_categories/1
  # GET /expense_categories/1.json
  def show
    @expense_category = ExpenseCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @expense_category }
    end
  end

  # GET /expense_categories/new
  # GET /expense_categories/new.json
  def new
    @expense_category = ExpenseCategory.new
    @expense_categories = ExpenseCategory.where(:user_id => current_user.id)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @expense_category }
    end
  end

  # GET /expense_categories/1/edit
  def edit
    @expense_category = ExpenseCategory.find(params[:id])
  end

  # POST /expense_categories
  # POST /expense_categories.json
  def create
    @expense_category = ExpenseCategory.new(params[:expense_category])

    respond_to do |format|
      if @expense_category.save
        format.html { redirect_to expense_items_path, notice: "#{@expense_category.category_name} was successfully created as an expense category." }
        format.json { render json: @expense_category, status: :created, location: @expense_category }
      else
        format.html { render action: "new" }
        format.json { render json: @expense_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /expense_categories/1
  # PUT /expense_categories/1.json
  def update
    @expense_category = ExpenseCategory.find(params[:id])

    respond_to do |format|
      if @expense_category.update_attributes(params[:expense_category])
        format.html { redirect_to @expense_category, notice: 'Expense category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @expense_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expense_categories/1
  # DELETE /expense_categories/1.json
  def destroy
    @expense_category = ExpenseCategory.find(params[:id])
    @expense_category.destroy

    respond_to do |format|
      format.html { redirect_to new_expense_category_path }
      format.json { head :no_content }
    end
  end
end
