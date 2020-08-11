class Van < ApplicationRecord
  belongs_to :user
  validates :name, :description, :seat, :location, :date, :price, :image_url, presence: true
end
