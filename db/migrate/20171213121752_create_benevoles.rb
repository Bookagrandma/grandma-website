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
