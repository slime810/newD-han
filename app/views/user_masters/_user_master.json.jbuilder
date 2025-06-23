json.extract! user_master, :id, :user_id, :user_name, :email, :created_at, :updated_at
json.url user_master_url(user_master, format: :json)
