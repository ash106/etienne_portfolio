json.array!(@photos) do |photo|
  json.extract! photo, :id, :row_order
  json.url photo_url(photo, format: :json)
end
