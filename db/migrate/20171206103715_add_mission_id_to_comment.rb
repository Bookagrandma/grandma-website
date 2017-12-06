class AddMissionIdToComment < ActiveRecord::Migration[5.1]
  def change
  	change_table :comments do |t|

    t.integer "mission_id"
  end
end
end
