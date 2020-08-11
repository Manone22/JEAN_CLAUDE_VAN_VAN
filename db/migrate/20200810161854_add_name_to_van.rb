class AddNameToVan < ActiveRecord::Migration[6.0]
  def change
    add_column :vans, :name, :string
  end
end
