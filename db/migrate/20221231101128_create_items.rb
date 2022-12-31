class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :user_id   #作成者のidが書き込まれる
      t.integer :admin_id
      t.integer :genre_id,        null: false
      t.string  :name,            null: false
      t.timestamps
    end
  end
end
