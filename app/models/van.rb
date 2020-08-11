class Van < ApplicationRecord
  belongs_to :user
  validates :name, :description, :date, :location, :price, :seat, :image_url, :user, presence: true
end
