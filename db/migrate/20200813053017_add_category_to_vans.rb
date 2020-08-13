class AddCategoryToVans < ActiveRecord::Migration[6.0]
  def change
    add_column :vans, :category, :string
  end
end
