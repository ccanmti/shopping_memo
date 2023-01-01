class Public::MemosController < ApplicationController
  def index
    @memos = memos.current.user
  end

  def create
      @memo = Memo.new(memo_params)
      @memo.save
  end

  private

  def memo_params
    params.require(:memo).permit(:user_id,:recipe_id,:item_id)
  end

end
