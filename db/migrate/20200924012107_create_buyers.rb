class CreateBuyers < ActiveRecord::Migration[5.2]
  def change
    create_table :buyers do |t|
    t.integer :customer_id
    
    t.string :family_name
    t.string :first_name
    t.string :family_name_kana
    t.string :first_name_kana
    t.integer :post_code
    t.string :prefecture
    t.string :city
    t.string :address
    t.string :building_name
    t.integer :phone_number
    t.timestamps
    end
  end
end
