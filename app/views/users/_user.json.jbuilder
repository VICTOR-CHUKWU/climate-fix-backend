json.extract! user, :id, :name, :bio, :postcounter, :created_at, :updated_at
json.url user_url(user, format: :json)
