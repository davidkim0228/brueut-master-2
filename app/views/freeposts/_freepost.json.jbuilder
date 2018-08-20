json.extract! freepost, :id, :title, :content, :post_id, :created_at, :updated_at
json.url freepost_url(freepost, format: :json)
