class CreateVans < ActiveRecord::Migration[6.0]
  def change
    create_table :vans do |t|
      t.text :description
      t.date :date
      t.integer :price
      t.integer :seat
      t.string :location
      t.string :image_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
