json.extract! dish, :id, :restaurant_id, :name, :price, :created_at, :updated_at
json.url dish_url(dish, format: :json)
