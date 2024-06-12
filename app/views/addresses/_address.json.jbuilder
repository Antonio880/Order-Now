json.extract! address, :id, :user_id, :street, :city, :state, :zip_code, :created_at, :updated_at
json.url address_url(address, format: :json)
