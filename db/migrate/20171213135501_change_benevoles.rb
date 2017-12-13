class ChangeBenevoles < ActiveRecord::Migration[5.1]
  def change 
  	change_table :benevoles do |t|
  	t.index ["email"], name: "index_benevoles_on_email", unique: true
    t.index ["reset_password_token"], name: "index_benevoles_on_reset_password_token", unique: true
  end
end
end
