json.extract! trip, :id, :title, :date, :location, :description, :route, :budget, :budget_description, :donations, :workshop, :adults, :kids, :grampas, :avility, :created_at, :updated_at
json.url trip_url(trip, format: :json)
