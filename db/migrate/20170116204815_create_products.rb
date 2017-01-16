class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.decimal :product_price

      t.timestamps
    end
  end
end
