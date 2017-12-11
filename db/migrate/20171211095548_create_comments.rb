class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
    	t.text "body"
	    t.datetime "created_at", null: false
	    t.datetime "updated_at", null: false
	    t.string "commentable_type"
	    t.bigint "commentable_id"
    end
  end
end
