json.extract! postblog, :id, :name, :text, :created_at, :updated_at
json.url postblog_url(postblog, format: :json)
