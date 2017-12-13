ActiveRecord::Schema.define(version: 20171208165502) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  class CreateBenevoles < ActiveRecord::Migration[5.1]
  def change
    create_table :benevoles do |t|
    t.string "firstname"
    t.string "lastname"
    t.date "birthday"
    t.string "address"
    t.integer "zip"
    t.string "city"
    t.string "gender"
    t.string "avatar"
    t.string "email"
    t.integer "phone"
    t.text "motivation"
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
    end
  end
end

class CreateEtablissements < ActiveRecord::Migration[5.1]
  def change
    create_table :etablissements do |t|
        t.string "name"
        t.string "avatar"
        t.string "address"
        t.string "zip"
        t.string "city"
        t.string "dept"
        t.string "category"
        t.string "email"
        t.string "phone"
        t.text "description"
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
    end
  end
end

class CreateMissions < ActiveRecord::Migration[5.1]
  def change
    create_table :missions do |t|
        t.string "title"
        t.text "body"
        t.string "place"
        t.datetime "appointment"
        t.integer "benevole_id"
        t.integer "etablissement_id"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
    end
  end
end

