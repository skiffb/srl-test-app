class Building < ApplicationRecord
    validates :owner, presence: true, uniqueness: true
    # validates :owner, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :price, presence: true
    enum subclass: [:house, :complex_building, :commercial_unit]
    has_one_attached :image
end
