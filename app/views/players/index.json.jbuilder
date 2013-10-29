json.array!(@players) do |player|
  json.extract! player, :identifier, :firstName, :lastName, :handicap
  json.url player_url(player, format: :json)
end
