class ComplexBuilding < Building
    validates :units, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
    validates :sqmt, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
    validates :address, presence: true
end