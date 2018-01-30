class  ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list = List.create(list_params.merge(user: current_user))
      if @list.save
        flash[:notice] = "New list created"
        redirect_to root_path(@list)
      else
        flash[:notice] = "List name required"
        render :new
      end
  end

  def edit
    @list = List.find(params[:id])
      if @list.user != current_user
       @list.edit(list_params)
       redirect_to list_path(@list)
      end
  end

  def update
    @list = List.find(params[:id])
    @list.update(list_params.merge(user: current_user))
      if @list.user == current_user
       @list.update(list_params)
    end
      redirect_to list_path(@list)
  end

  def destroy
    @list = List.find(params[:id])
      if @list.user == current_user
       @list.destroy
    end
      redirect_to lists_path(@list)
  end

    private

  def list_params
      params.require(:list).permit(:title)
  end
 end
