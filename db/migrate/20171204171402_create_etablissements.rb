class CreateEtablissements < ActiveRecord::Migration[5.1]
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
    end
  end
end
