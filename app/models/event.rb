class Event < ApplicationRecord
  has_many :comments
  has_many :guests
  validates :title, presence: true,
                      length: {minimum: 5}
  validates :description, presence: true
  validates :guest_capacity, inclusion: { in: 0..25 }
end
