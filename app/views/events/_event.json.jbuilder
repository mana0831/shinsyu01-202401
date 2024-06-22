json.extract! event, :id, :title, :event_date, :event_at, :discription, :picture, :point, :people, :people_remaining, :people_participants, :name, :outside, :house, :created_at, :updated_at
json.url event_url(event, format: :json)
