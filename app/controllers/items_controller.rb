class ItemsController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @item = @list.items.new
  end


  def create
    @list = List.find(params[:list_id])
    @item = @list.items.create(item_params)
      redirect_to list_path(@list) # include an if/else if validations pass or not
  end

  def show # You can remove this route since there is no corresponding view page
    @item = Item.find(params[:id])
  end

  def edit
    @list = List.find(params[:list_id])
    @item = Item.find(params[:id])
      if @list.user != current_user
        flash[:alert] = "Only the author can edit it!"

        redirect_to list_path(@list)
      end
  end

  def update
    @list = List.find(params[:list_id])
    @item = Item.find(params[:id])
      if @list.user == current_user
        @item.update(item_params) # Add nested if/else to see if item passes validations
      else
        flash[:alert] = "Only the author can edit it!"
      end
      redirect_to list_path(@list)
  end

  def destroy
    @list = List.find(params[:list_id])
    @item = Item.find(params[:id])
      if @list.user == current_user
        @item.destroy
      else
        flash[:alert] = "Only the author can edit it!"
      end
        redirect_to list_path(@list)
  end

  private
  def item_params
    params.require(:item).permit(:name, :category, :quantity, :photo_url, :note)
  end
end
