class CreateEtablissements < ActiveRecord::Migration[5.1]
  def change
    create_table :etablissements do |t|

    t.string "name"
    t.string "address"
    t.integer "zip"
    t.string "city"
    t.string "type"
    t.string "email"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    end
  end
end
