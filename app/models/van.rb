class Van < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :description, :seat, :location, :date, :price, :image_url, presence: true
  # à valider en groupe
end
