json.extract! task, :id, :name, :date, :complete, :overdue, :status, :created_at, :updated_at
json.url task_url(task, format: :json)
