class Comment < ApplicationRecord
  belongs_to :event
  validates :username, presence: true
  validates :content, presence: true
end
