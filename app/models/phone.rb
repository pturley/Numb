class Phone < ActiveRecord::Base
  attr_accessible :make
  attr_accessible :has_internet
  attr_accessible :has_gps
  belongs_to :phone_number
end
