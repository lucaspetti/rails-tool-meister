class Tool < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :category, presence: true
  validates :photo, presence: true
  validates :location, presence: true
  validates :price_per_day, presence: true

  # CLOUDINARY
  # mount_uploader :photo, PhotoUploader
  # validates_presence_of :photo
end
