class CreateAdminCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_customers do |t|
      t.string :customerCode
      t.string :customerName
      t.string :customerPhone

      t.timestamps
    end
  end
end
