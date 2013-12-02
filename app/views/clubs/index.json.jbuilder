json.array!(@clubs) do |club|
  json.extract! club, :identifier, :player_id, :make, :model, :order, :name
  json.url club_url(club, format: :json)
end
