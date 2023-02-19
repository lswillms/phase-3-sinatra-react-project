class RenameOldTableToNewTableName < ActiveRecord::Migration[6.1]
  def change
    rename_table :buyers, :sellers
  end
end
