json.array!(@public_photos) do |public_photo|
  json.extract! public_photo, :image, :caption
  json.url public_photo_url(public_photo, format: :json)
end
