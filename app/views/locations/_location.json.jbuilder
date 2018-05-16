json.extract! location, :id, :name, :country, :image, :latitude, :longitude, :created_at, :updated_at
json.url location_url(location, format: :json)
