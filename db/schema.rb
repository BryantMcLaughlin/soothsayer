# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2024_12_01_010204) do
  create_table "player_statistics", force: :cascade do |t|
    t.integer "year"
    t.string "player_name"
    t.string "position"
    t.float "pass_yards"
    t.float "pass_tds"
    t.float "receptions"
    t.float "rec_yards"
    t.float "rec_tds"
    t.float "rush_yards"
    t.float "rush_tds"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rankings", force: :cascade do |t|
    t.integer "year"
    t.float "pppassyd"
    t.float "pppasstd"
    t.float "ppr"
    t.float "pprecyd"
    t.float "pprectd"
    t.float "pprushyd"
    t.float "pprushtd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
