class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
    @types = Type.all
  end

  # GET /items/1/edit
  def edit
  end

  def search
    types = Type.all
    @type_drop_down = [[]]
    types.each do |t|
      @type_drop_down << [t.title, t.id]
    end
    @and_or = [['OR', 'OR'],['AND', 'AND']]

  end

  def do_search
    @items = Item.search(params[:title], params[:operand], params[:description], params[:owner], params[:t][:t_id])
    if @items != nil
      render :index
    else
      redirect_to search_items_path
    end
  end
  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)
    @types = Type.all.uniq

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @item }
      else
        format.html { render action: 'new' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    @types = Type.all.uniq
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:title, :description, :owner, :type_id)
    end
end
