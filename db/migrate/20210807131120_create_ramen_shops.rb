class CreateRamenShops < ActiveRecord::Migration[6.0]
  def change
    create_table :ramen_shops do |t|

      t.timestamps
    end
  end
end
