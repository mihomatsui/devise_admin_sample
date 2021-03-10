class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      # 指定したカラムに空の状態で保存させるのを防ぐ
      t.string :title, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
