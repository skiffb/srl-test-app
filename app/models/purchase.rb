class Purchase < ApplicationRecord
  belongs_to :building
  validates :user, presence: true
  validates :user, format: { with: URI::MailTo::EMAIL_REGEXP }
end
