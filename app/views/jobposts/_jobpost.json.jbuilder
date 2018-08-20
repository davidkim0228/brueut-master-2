json.extract! jobpost, :id, :title, :content, :post_id, :created_at, :updated_at
json.url jobpost_url(jobpost, format: :json)
