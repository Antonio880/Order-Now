json.extract! payment, :id, :order_id, :amount, :method, :status, :created_at, :updated_at
json.url payment_url(payment, format: :json)
