class CreateMemos < ActiveRecord::Migration[6.1]
  def change
    create_table :memos do |t|
      t.integer :user_id
      t.integer :recipe_id
      t.integer :item_id

      t.timestamps
    end
  end
end
