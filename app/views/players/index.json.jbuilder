json.array!(@players) do |player|
  json.extract! player, :id, :firstName, :lastName, :handicap
  json.url player_url(player, format: :json)
end
