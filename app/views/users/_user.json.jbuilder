json.extract! user, :id, :name, :admin, :email, :image, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
