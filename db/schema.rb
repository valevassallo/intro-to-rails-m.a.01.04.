# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_04_01_223237) do

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.string "real_name"
    t.date "birth_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cassettes", force: :cascade do |t|
    t.integer "movie_id"
    t.string "format"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_cassettes_on_movie_id"
  end

  create_table "casts", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "actor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_casts_on_actor_id"
    t.index ["movie_id"], name: "index_casts_on_movie_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.integer "phone_number"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rents", force: :cascade do |t|
    t.integer "cassette_id"
    t.integer "member_id"
    t.date "start_rent"
    t.date "end_rent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cassette_id"], name: "index_rents_on_cassette_id"
    t.index ["member_id"], name: "index_rents_on_member_id"
  end

end
