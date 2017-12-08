class ChangeComment < ActiveRecord::Migration[5.1]

def change
    change_table :comments do |t|
      t.string :name
      t.references :commentable, polymorphic: true, index: true
      t.remove :benevole_id
      t.remove :etablissement_id
      t.remove :post_id
    end
  end
end
