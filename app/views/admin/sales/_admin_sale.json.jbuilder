json.extract! admin_sale, :id, :saleCode, :customer_id, :product_id, :quantity, :amount, :created_at, :updated_at
json.url admin_sale_url(admin_sale, format: :json)
