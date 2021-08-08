class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :score
      t.references :user, foreign_key: true
      t.references :ramen_shop, foreign_key: true
      t.timestamps
    end
  end
end
