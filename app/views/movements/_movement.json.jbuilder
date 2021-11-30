json.extract! movement, :id, :type, :description, :value, :due_date, :paid, :category_id, :user_id, :created_at, :updated_at
json.url movement_url(movement, format: :json)
