json.array!(@channels) do |channel|
  json.extract! channel, :id, :name, :img_hash, :sec_hash, :slug
  json.url channel_url(channel, format: :json)
end
