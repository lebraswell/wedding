json.extract! rsvp, :id, :address, :city, :state, :zip, :name, :coming, :created_at, :updated_at
json.url rsvp_url(rsvp, format: :json)