class AddEquipementtoVans < ActiveRecord::Migration[6.0]
  def change
    add_column :vans, :equipement, :string
  end
end
