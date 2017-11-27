class ItemsController < ApplicationController

  def new
    @List = List.find(params[:list_id])
    @item = Item.new
  end


  def create
    # puts "*********************************"
    @list = List.find(params[:list_id])
    @item = @list.items.create!(item_params)
    # puts @list
    # puts @item

    redirect_to list_items_path(@list)
  end

  def edit
    @list = List.find(params[:list_id])
    @item = Item.find(params[:id])
    if @item.user != current_user
      flash[:alert] = "Only the author can edit it!"
      redirect_to list_path(@list)
    end
  end

  def update
    @list = List.find(params[:list_id])
    @item = Item.find(params[:id])
    if @item.user == current_user
      @item.update(item_params)
    else
      flash[:alert] = "Only the author can edit it!"
    end
    redirect_to list_path(@list)
  end

  def destroy
    @list = List.find(params[:list_id])
    @item = Item.find(params[:id])
    if @item.user == current_user
      @item.destroy
    else
      flash[:alert] = "Only the author can edit it!"
    end
    redirect_to list_path(@list)
  end

  def add_stack
      @item = Item.find(params[:id])
      @item.stacks.create(user: current_user)

      redirect_to list_items(@item)
  end
  def remove_stack
       @item = Item.find(params[:id])
       @item.stacks.find_by(user: current_user).destroy

       redirect_to list_items(@item)
  end

  private
  def item_params
    params.require(:item).permit(:name, :category, :quantity, :photo_url, :note)
  end
end
