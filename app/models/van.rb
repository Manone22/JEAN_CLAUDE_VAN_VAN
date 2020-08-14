class Van < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, :description, :seat, :location, :price, :photo, presence: true

    def unavailable_dates
      bookings.pluck(:start_date, :end_date).map do |range|
        { from: range[0], to: range[1] }
      end
    end

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_location_and_seats,
                  against: [:locations],
                  using: {
                    tsearch: { prefix: true }
                  }

  scope :with_seats, ->(number) { where('seat >= ?', number) } # For add new filter by numbers of seats
end
