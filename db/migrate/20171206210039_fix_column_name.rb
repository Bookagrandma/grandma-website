class FixColumnName < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :etablissements, :type, :category
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end