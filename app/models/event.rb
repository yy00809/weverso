# Model for Event
class Event < ApplicationRecord
  has_many :comments, dependent: :delete_all
  has_many :guests, dependent: :delete_all

  validates :title, presence: true,
                      length: {minimum: 5}
  validates :description, presence: true
  validates :guest_capacity, inclusion: { in: 0..25 }

  # only events with 'availability>0' will show
  scope :still_available, -> { where("guest_capacity>0")}
end
