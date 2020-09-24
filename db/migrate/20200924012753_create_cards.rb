class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
    	t.integer :customer_id
    	
    	t.integer :card_number
    	t.integer :expiration_year
    	t.integer :expiration_month
    	t.integer :secureity_code
      t.timestamps
    end
  end
end
