class ChangeCommentAgain < ActiveRecord::Migration[5.1]
  def change

  	change_table :comments do |t|
      t.remove :name
      t.remove :mission_id
    end
  end
end
