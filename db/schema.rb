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

ActiveRecord::Schema.define(version: 20171207142333) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "benevoles", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.date "birthday"
    t.string "address"
    t.integer "zip"
    t.string "city"
    t.string "gender"
    t.string "email"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_benevoles_on_email", unique: true
    t.index ["reset_password_token"], name: "index_benevoles_on_reset_password_token", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.integer "benevole_id"
    t.integer "etablissement_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "mission_id"
    t.index ["benevole_id"], name: "index_comments_on_benevole_id"
    t.index ["etablissement_id"], name: "index_comments_on_etablissement_id"
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

  create_table "etablissements", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "zip"
    t.string "city"
    t.string "category"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_etablissements_on_email", unique: true
    t.index ["reset_password_token"], name: "index_etablissements_on_reset_password_token", unique: true
  end

  create_table "missions", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "place"
    t.datetime "appointment"
    t.integer "benevole_id"
    t.integer "etablissement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["benevole_id"], name: "index_missions_on_benevole_id"
    t.index ["etablissement_id"], name: "index_missions_on_etablissement_id"
  end

  create_table "profils", force: :cascade do |t|
    t.text "motivation"
    t.string "avatar"
    t.integer "benevole_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["benevole_id"], name: "index_profil_on_benevole_id"
  end

end
