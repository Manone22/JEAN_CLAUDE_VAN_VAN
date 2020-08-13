class Van < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :category, :description, :seat, :location, :date, :price, :image_url, presence: true
end
