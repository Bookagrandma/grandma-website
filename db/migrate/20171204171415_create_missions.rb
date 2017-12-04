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
    t.index ["benevole_id"], name: "index_missions_on_benevole_id"
    t.index ["etablissement_id"], name: "index_missions_on_etablissement_id"
    end
  end
end
