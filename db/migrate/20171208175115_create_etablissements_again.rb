class CreateEtablissementsAgain < ActiveRecord::Migration[5.1]
  def change
    create_table :etablissements do |t|

    t.string "name"
    t.string "address"
    t.string "zip"
    t.string "city"
    t.string "dept"
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
    
    end
  end
end
