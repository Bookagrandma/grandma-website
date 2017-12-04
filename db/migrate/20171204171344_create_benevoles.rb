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
    t.string "email"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    end
  end
end
