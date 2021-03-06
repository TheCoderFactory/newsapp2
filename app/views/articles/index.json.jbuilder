json.array!(@articles) do |article|
  json.extract! article, :id, :title, :url, :user_id, :image, :summary
  json.url article_url(article, format: :json)
end
