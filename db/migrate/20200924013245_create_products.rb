class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
    	t.integer :category_id
    	t.integer :brand_id
    	t.integer :customer_id
    	
    	t.string :name
    	t.string :price
    	t.text :description
    	t.string :status
    	t.string :size
    	t.string :shipping_cost
    	t.string :shipping_days
    	t.string :prefecture_id
    	t.string :judgment
    	t.integer :shipping_id
      t.timestamps
    end
  end
end
