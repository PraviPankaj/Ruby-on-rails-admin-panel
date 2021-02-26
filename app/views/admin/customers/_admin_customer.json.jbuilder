json.extract! admin_customer, :id, :customerCode, :customerName, :customerPhone, :created_at, :updated_at
json.url admin_customer_url(admin_customer, format: :json)
