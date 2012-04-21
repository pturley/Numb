class PhoneNumber < ActiveRecord::Base
  attr_accessible :number
  attr_accessible :is_assigned
  has_one :phone
end
