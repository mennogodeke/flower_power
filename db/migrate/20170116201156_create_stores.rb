class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :store_address
      t.string :store_zip
      t.string :store_city
      t.string :store_telephone

      t.timestamps
    end
  end
end
