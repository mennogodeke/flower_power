class EditFieldOnProduct < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :product_price, :decimal, :precision => 8, :scale => 2
  end
end
