json.extract! tweet, :id, :descrption, :UserName, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
