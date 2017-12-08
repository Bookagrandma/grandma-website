class AddDeptToEtablissement < ActiveRecord::Migration[5.1]
  def change
  	change_table :etablissements do |t|

    t.string "dept"
  end
end
end
