class ChangeNameToTitle < ActiveRecord::Migration[8.0]
  def change
    rename_column :products, :name, :title
  end
end
