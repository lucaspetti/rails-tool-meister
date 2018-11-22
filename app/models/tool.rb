class Tool < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :category, presence: true
  #validates :photo, presence: true
  validates :location, presence: true
  validates :price_per_day, presence: true

  mount_uploader :image, PhotoUploader
  # CLOUDINARY
  # mount_uploader :photo, PhotoUploader
  # validates_presence_of :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch
  pg_search_scope :search_by_location_and_category,
                  against: [:location, :category],
                  using: {
                  tsearch: { prefix: true } # <-- now `superman batm` will return something!
                  }
end
