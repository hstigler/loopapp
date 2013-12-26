json.array!(@rounds) do |round|
  json.extract! round, :id, :tee_id, :player_id, :course_id, :startHole, :endHole, :score
  json.url round_url(round, format: :json)
end
