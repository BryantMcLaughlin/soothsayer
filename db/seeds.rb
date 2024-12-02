require 'csv'

# File path for the CSV
file_path = Rails.root.join('db', 'seeds', 'NFL 2012-2023 yearly_player_data.csv')

puts "Importing player statistics from CSV..."

CSV.foreach(file_path, headers: true) do |row|
  PlayerStatistic.create!(
    year: row['season'].to_i,
    player_name: row['player_name'],
    position: row['position'],
    pass_yards: row['passing_yards'].to_f,
    pass_tds: row['pass_td'].to_f,
    receptions: row['receptions'].to_f,
    rec_yards: row['receiving_yards'].to_f,
    rec_tds: row['reception_td'].to_f,
    rush_yards: row['rushing_yards'].to_f,
    rush_tds: row['run_td'].to_f
  )
end

puts "Player statistics imported successfully!"

