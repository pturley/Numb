class Phone < ActiveRecord::Base
  attr_accessible :make
  attr_accessible :has_internet
  belongs_to :phone_number
end
