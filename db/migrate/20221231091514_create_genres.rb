class CreateGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :genres do |t|
      t.integer :user_id   #作成者のidが書き込まれる
      t.integer :admin_id
      t.string  :name,            null: false
      t.timestamps
    end
  end
end
