require 'csv'

CSV.foreach(Rails.root.join('/home/blmclaughlin/soothsayer/NFL Player Stats(1922 - 2022).csv'), headers: true) do |row|
  Player.create!(
    player_name: row['player_name'],
    year: row['year'],
    team: row['team'],
    position: row['position'],
    scoring_format: row['scoring_format'],
    projected_points: row['projected_points']
  )
end

