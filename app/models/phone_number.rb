class PhoneNumber < ActiveRecord::Base
  attr_accessible :number
  has_one :phone
end
