json.array!(@feeds) do |feed|
  json.extract! feed, :id, :title, :url, :categories, :summary
  json.url feed_url(feed, format: :json)
end
