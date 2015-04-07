# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150407084125) do

  create_table "jobs", id: false, force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "movie_id",  null: false
    t.string  "job_name"
  end

  add_index "jobs", ["person_id", "movie_id"], name: "index_jobs_on_person_id_and_movie_id", unique: true

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.integer  "year"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "language"
    t.string   "genre"
    t.string   "summary"
    t.integer  "rt_rating"
    t.integer  "imdb_rating"
    t.string   "image_uri"
    t.integer  "producer_id"
    t.integer  "director_id"
    t.integer  "screenwriter_id"
    t.integer  "duration"
    t.string   "tribe"
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
