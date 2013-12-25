class IncomeCategoriesController < ApplicationController
  # GET /income_categories
  # GET /income_categories.json
  def index
    @income_categories = IncomeCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @income_categories }
    end
  end

  # GET /income_categories/1
  # GET /income_categories/1.json
  def show
    @income_category = IncomeCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @income_category }
    end
  end

  # GET /income_categories/new
  # GET /income_categories/new.json
  def new
    @income_category = IncomeCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @income_category }
    end
  end

  # GET /income_categories/1/edit
  def edit
    @income_category = IncomeCategory.find(params[:id])
  end

  # POST /income_categories
  # POST /income_categories.json
  def create
    @income_category = IncomeCategory.new(params[:income_category])

    respond_to do |format|
      if @income_category.save
        format.html { redirect_to @income_category, notice: 'Income category was successfully created.' }
        format.json { render json: @income_category, status: :created, location: @income_category }
      else
        format.html { render action: "new" }
        format.json { render json: @income_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /income_categories/1
  # PUT /income_categories/1.json
  def update
    @income_category = IncomeCategory.find(params[:id])

    respond_to do |format|
      if @income_category.update_attributes(params[:income_category])
        format.html { redirect_to @income_category, notice: 'Income category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @income_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /income_categories/1
  # DELETE /income_categories/1.json
  def destroy
    @income_category = IncomeCategory.find(params[:id])
    @income_category.destroy

    respond_to do |format|
      format.html { redirect_to income_categories_url }
      format.json { head :no_content }
    end
  end
end
