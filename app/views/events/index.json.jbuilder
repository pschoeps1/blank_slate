json.array!(@events) do |event|
  json.extract! event, :id, :name, :email, :start_at, :end_at, :content
  json.start event.start_at
  json.end   event.end_at
  json.url event_url(event, format: :html)
end
