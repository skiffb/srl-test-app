class House < Building
    validates :rooms, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
    validates :sqmt, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
    validates :floors, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
    validates :air_cond, presence: true
    validates :address, presence: true

end