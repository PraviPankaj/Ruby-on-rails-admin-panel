class CreateAdminProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_products do |t|
      t.string :productCode
      t.string :productName
      t.string :productCost

      t.timestamps
    end
  end
end
