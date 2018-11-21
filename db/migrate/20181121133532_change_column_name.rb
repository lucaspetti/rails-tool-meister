class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :tools, :photo, :image
  end
end
