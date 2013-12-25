class ExpenseSourcesController < ApplicationController
  # GET /expense_sources
  # GET /expense_sources.json
  def index
    @expense_sources = ExpenseSource.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @expense_sources }
    end
  end

  # GET /expense_sources/1
  # GET /expense_sources/1.json
  def show
    @expense_source = ExpenseSource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @expense_source }
    end
  end

  # GET /expense_sources/new
  # GET /expense_sources/new.json
  def new
    @expense_source = ExpenseSource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @expense_source }
    end
  end

  # GET /expense_sources/1/edit
  def edit
    @expense_source = ExpenseSource.find(params[:id])
  end

  # POST /expense_sources
  # POST /expense_sources.json
  def create
    @expense_source = ExpenseSource.new(params[:expense_source])

    respond_to do |format|
      if @expense_source.save
        format.html { redirect_to @expense_source, notice: 'Expense source was successfully created.' }
        format.json { render json: @expense_source, status: :created, location: @expense_source }
      else
        format.html { render action: "new" }
        format.json { render json: @expense_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /expense_sources/1
  # PUT /expense_sources/1.json
  def update
    @expense_source = ExpenseSource.find(params[:id])

    respond_to do |format|
      if @expense_source.update_attributes(params[:expense_source])
        format.html { redirect_to @expense_source, notice: 'Expense source was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @expense_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expense_sources/1
  # DELETE /expense_sources/1.json
  def destroy
    @expense_source = ExpenseSource.find(params[:id])
    @expense_source.destroy

    respond_to do |format|
      format.html { redirect_to expense_sources_url }
      format.json { head :no_content }
    end
  end
end
