class ItemsController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @item = @list.items.new
  end


  def create
    @list = List.find(params[:list_id])
    @item = @list.items.create(item_params)
    if @item.save
      flash[:notice] = "Item created"
      redirect_to list_path(@list)
    else
      flash[:notice] = "Name required"
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @list = List.find(params[:list_id])
    @item = Item.find(params[:id])
      if @list.user != current_user
          redirect_to list_path(@list)
      end
  end

  def update
    @list = List.find(params[:list_id])
    @item = Item.find(params[:id])
      if @list.user == current_user
          @item.update(item_params)
      end
      redirect_to list_path(@list)
  end

  def destroy
    @list = List.find(params[:list_id])
    @item = Item.find(params[:id])
      if @list.user == current_user
          @item.destroy
      end
        redirect_to list_path(@list)
  end

  private
  def item_params
    params.require(:item).permit(:name,:quantity, :category, :photo_url, :note)
  end
end
