class Public::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @memo = Memo.new
  end
  

end
