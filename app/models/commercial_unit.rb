class CommercialUnit < Building
    validates :shops, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
    validates :sqmt, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
    validates :parking, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
    validates :address, presence: true
end