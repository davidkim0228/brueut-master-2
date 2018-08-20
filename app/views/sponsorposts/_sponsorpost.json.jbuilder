json.extract! sponsorpost, :id, :title, :content, :post_id, :created_at, :updated_at
json.url sponsorpost_url(sponsorpost, format: :json)
