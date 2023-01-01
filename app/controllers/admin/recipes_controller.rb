class Admin::RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def index
    @recipe = Recipe.new
    @recipes = Recipe.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    redirect_to admin_recipes_path
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:user_id,:admin_id,:item_id_1,:item_id_2,:item_id_3,:item_id_4,:item_id_5,:amount_1,:amount_2,:amount_3,:amount_4,:amount_5,:name)
  end
end
