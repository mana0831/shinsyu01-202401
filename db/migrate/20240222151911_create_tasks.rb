class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      #追加したメモはカレンダーの中に表示させたいため
      #ここから
      t.string :title
      t.text :content
      t.datetime :start_time
      #ここまでを追加
      t.timestamps
    end
  end
end
