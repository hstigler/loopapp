json.array!(@clubs) do |club|
  json.extract! club, :identifier, :make, :model, :order, :name
  json.url club_url(club, format: :json)
end
