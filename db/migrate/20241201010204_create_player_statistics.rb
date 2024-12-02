class CreatePlayerStatistics < ActiveRecord::Migration[8.0]
  def change
    create_table :player_statistics do |t|
      t.integer :year
      t.string :player_name
      t.string :position
      t.float :pass_yards
      t.float :pass_tds
      t.float :receptions
      t.float :rec_yards
      t.float :rec_tds
      t.float :rush_yards
      t.float :rush_tds

      t.timestamps
    end
  end
end
