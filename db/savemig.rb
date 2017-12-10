ActiveRecord::Schema.define(version: 20171208165502) do

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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "commentable_type"
    t.bigint "commentable_id"
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id"
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

