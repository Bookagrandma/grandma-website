class CreateEtprofils < ActiveRecord::Migration[5.1]
  def change
    create_table :etprofils do |t|
    t.text "description"
    t.string "avatar"
    t.integer "etablissement_id"
	t.timestamps
    end
  end
end
