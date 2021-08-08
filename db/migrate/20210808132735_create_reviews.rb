class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :score
      t.references :user
      t.references :ramen_shop
      t.timestamps
    end
  end
end
