json.extract! post, :id, :title, :describtion, :commentscounter, :likescounter, :User_id, :created_at, :updated_at
json.url post_url(post, format: :json)
