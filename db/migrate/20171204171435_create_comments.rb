class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|

    t.text "body"
    t.integer "benevole_id"
    t.integer "etablissement_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["benevole_id"], name: "index_comments_on_benevole_id"
    t.index ["etablissement_id"], name: "index_comments_on_etablissement_id"
    t.index ["post_id"], name: "index_comments_on_post_id"
    end
  end
end
