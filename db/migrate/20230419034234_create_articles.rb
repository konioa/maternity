class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.datetime :start_time, null: false
      t.float :weight
      t.float :target_weight
      t.string :meal
      t.string :exercise
      t.integer :condition
      t.string :disease
      t.string :diary
      t.timestamps
    end
  end
end
