class Guest < ApplicationRecord
  belongs_to :event
  validates_format_of :fullname, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/, presence: true
  validates :email, presence: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phonenumber, presence: true,
                          numericality: true
end
