class Van < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :category, :description, :seat, :location, :date, :price, :image_url, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

    include PgSearch::Model
  pg_search_scope :search_by_location,
    against: [ :location],
    using: {
      tsearch: { prefix: true }
    }

  scope :with_seats, ->(number) {where('seat >= ?', number)} # For add new filter by numbers of seats (if more time)
end
