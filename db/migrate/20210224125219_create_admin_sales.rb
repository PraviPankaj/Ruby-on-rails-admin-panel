class CreateAdminSales < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_sales do |t|
      t.string :saleCode
      t.references :customer, null: false, foreign_key: false
      t.references :product, null: false, foreign_key: false
      t.integer :quantity
      t.string :amount

      t.timestamps
    end
    #add_foreign_key :admin_sales, :admin_products, column: :product_id
  end
end
