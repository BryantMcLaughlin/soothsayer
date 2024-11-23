class CreateRankings < ActiveRecord::Migration[8.0]
  def change
    create_table :rankings do |t|
      t.integer :year
      t.integer :pppasstd
      t.integer :pppassyard
      t.integer :ppr
      t.integer :pprushtd
      t.integer :pprushyard
      t.integer :pprecyard
      t.integer :pprectd
      t.integer :PPfumble
      t.integer :ppint
      t.integer :ppfgm

      t.timestamps
    end
  end
end
