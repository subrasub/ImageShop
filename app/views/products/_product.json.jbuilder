json.extract! product, :id, :name, :description, :price, :collectibles, :pictures, :art, :sports, :available, :created_at, :updated_at
json.url product_url(product, format: :json)
