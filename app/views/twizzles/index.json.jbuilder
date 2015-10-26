json.array!(@twizzles) do |twizzle|
  json.extract! twizzle, :id, :user_id, :content
  json.url twizzle_url(twizzle, format: :json)
end
