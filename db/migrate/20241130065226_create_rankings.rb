class CreateRankings < ActiveRecord::Migration[8.0]
  def change
    create_table :rankings do |t|
      t.integer :year
      t.float :pppassyd
      t.float :pppasstd
      t.float :ppr
      t.float :pprecyd
      t.float :pprectd
      t.float :pprushyd
      t.float :pprushtd

      t.timestamps
    end
  end
end
