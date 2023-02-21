class RenameSellerNameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :sellers, :name, :seller_name
  end
end
