json.extract! order, :id, :user_id, :restaurant_id, :delivery_person_id, :address_id, :status, :total_price, :created_at, :updated_at
json.url order_url(order, format: :json)
