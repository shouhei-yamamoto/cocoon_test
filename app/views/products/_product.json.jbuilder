json.extract! product, :id, :price, :blog_id, :created_at, :updated_at
json.url product_url(product, format: :json)