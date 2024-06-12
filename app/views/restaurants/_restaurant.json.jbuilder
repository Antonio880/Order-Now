json.extract! restaurant, :id, :address_id, :name, :phone, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
