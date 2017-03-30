json.extract! user, :id, :full_name, :username, :password, :email, :phonenumber, :image, :bio, :website, :created_at, :updated_at
json.url user_url(user, format: :json)
