class IncomeItemsController < ApplicationController
  # GET /income_items
  # GET /income_items.json
  def index
    @income_items = IncomeItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @income_items }
    end
  end

  # GET /income_items/1
  # GET /income_items/1.json
  def show
    @income_item = IncomeItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @income_item }
    end
  end

  # GET /income_items/new
  # GET /income_items/new.json
  def new
    @income_item = IncomeItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @income_item }
    end
  end

  # GET /income_items/1/edit
  def edit
    @income_item = IncomeItem.find(params[:id])
  end

  # POST /income_items
  # POST /income_items.json
  def create
    @income_item = IncomeItem.new(params[:income_item])

    respond_to do |format|
      if @income_item.save
        format.html { redirect_to @income_item, notice: 'Income item was successfully created.' }
        format.json { render json: @income_item, status: :created, location: @income_item }
      else
        format.html { render action: "new" }
        format.json { render json: @income_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /income_items/1
  # PUT /income_items/1.json
  def update
    @income_item = IncomeItem.find(params[:id])

    respond_to do |format|
      if @income_item.update_attributes(params[:income_item])
        format.html { redirect_to @income_item, notice: 'Income item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @income_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /income_items/1
  # DELETE /income_items/1.json
  def destroy
    @income_item = IncomeItem.find(params[:id])
    @income_item.destroy

    respond_to do |format|
      format.html { redirect_to income_items_url }
      format.json { head :no_content }
    end
  end
end
