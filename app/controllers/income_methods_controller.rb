class IncomeMethodsController < ApplicationController
  # GET /income_methods
  # GET /income_methods.json
  def index
    @income_methods = IncomeMethod.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @income_methods }
    end
  end

  # GET /income_methods/1
  # GET /income_methods/1.json
  def show
    @income_method = IncomeMethod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @income_method }
    end
  end

  # GET /income_methods/new
  # GET /income_methods/new.json
  def new
    @income_method = IncomeMethod.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @income_method }
    end
  end

  # GET /income_methods/1/edit
  def edit
    @income_method = IncomeMethod.find(params[:id])
  end

  # POST /income_methods
  # POST /income_methods.json
  def create
    @income_method = IncomeMethod.new(params[:income_method])

    respond_to do |format|
      if @income_method.save
        format.html { redirect_to @income_method, notice: 'Income method was successfully created.' }
        format.json { render json: @income_method, status: :created, location: @income_method }
      else
        format.html { render action: "new" }
        format.json { render json: @income_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /income_methods/1
  # PUT /income_methods/1.json
  def update
    @income_method = IncomeMethod.find(params[:id])

    respond_to do |format|
      if @income_method.update_attributes(params[:income_method])
        format.html { redirect_to @income_method, notice: 'Income method was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @income_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /income_methods/1
  # DELETE /income_methods/1.json
  def destroy
    @income_method = IncomeMethod.find(params[:id])
    @income_method.destroy

    respond_to do |format|
      format.html { redirect_to income_methods_url }
      format.json { head :no_content }
    end
  end
end
