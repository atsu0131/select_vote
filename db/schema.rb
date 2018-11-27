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

ActiveRecord::Schema.define(version: 20181127013105) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "politicians", force: :cascade do |t|
    t.string "name"
    t.string "pref"
    t.integer "age"
    t.string "sex"
    t.text "info"
    t.boolean "active"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pref_id"
    t.index ["pref_id"], name: "index_politicians_on_pref_id"
    t.index ["user_id"], name: "index_politicians_on_user_id"
  end

  create_table "prefs", force: :cascade do |t|
    t.string "pref_name", null: false
    t.string "pref_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "selections", force: :cascade do |t|
    t.string "select_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "icon_image"
    t.integer "age", null: false
    t.string "sex"
    t.boolean "admin", default: false, null: false
    t.boolean "elected", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pref_id"
    t.index ["pref_id"], name: "index_users_on_pref_id"
  end

  create_table "vote_actions", force: :cascade do |t|
    t.bigint "voter_id"
    t.bigint "politician_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["politician_id"], name: "index_vote_actions_on_politician_id"
    t.index ["voter_id"], name: "index_vote_actions_on_voter_id"
  end

  create_table "voters", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "selection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.index ["selection_id"], name: "index_voters_on_selection_id"
    t.index ["user_id"], name: "index_voters_on_user_id"
  end

  add_foreign_key "users", "prefs"
  add_foreign_key "vote_actions", "politicians"
  add_foreign_key "vote_actions", "voters"
end
