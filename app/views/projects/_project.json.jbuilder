json.extract! project, :id, :name, :picture, :start_date, :end_date, :location, :created_at, :updated_at
json.url project_url(project, format: :json)
