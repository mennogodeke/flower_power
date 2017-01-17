class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :store_id
      t.integer :customer_id
      t.integer :employee_id
      t.boolean :ready
      t.boolean :payed

      t.timestamps
    end
  end
end
