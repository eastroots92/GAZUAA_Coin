json.extract! mycoin, :id, :category, :coinname, :price, :user_id, :created_at, :updated_at
json.url mycoin_url(mycoin, format: :json)
