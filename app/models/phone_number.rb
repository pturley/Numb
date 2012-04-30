class PhoneNumber < ActiveRecord::Base
  validates_uniqueness_of :number
  attr_accessible :number
  attr_accessible :is_assigned
  has_one :phone
end
