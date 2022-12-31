class Admin::ItemsController < ApplicationController
  def index
    @item = Item.new
    @items = Item.all

  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to admin_items_path
  end

  def edit

  end

  def destroy

  end

  def update

  end

  private
  def item_params
    params.require(:item).permit(:user_id,:admin_id,:genre_id,:name)
  end
end
