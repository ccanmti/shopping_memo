class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.integer :user_id   #作成者のidが書き込まれる
      t.integer :admin_id
      t.integer :item_id_1
      t.integer :item_id_2
      t.integer :item_id_3
      t.integer :item_id_4
      t.integer :item_id_5
      t.integer :amount_1
      t.integer :amount_2
      t.integer :amount_3
      t.integer :amount_4
      t.integer :amount_5
      t.string  :name,            null: false
      t.timestamps
    end
  end
end
