class CreateProfils < ActiveRecord::Migration[5.1]
  def change
    create_table :profils do |t|
    t.text "motivation"
    t.string "avatar"
    t.integer "benevole_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["benevole_id"], name: "index_profil_on_benevole_id"

      t.timestamps
    end
  end
end
