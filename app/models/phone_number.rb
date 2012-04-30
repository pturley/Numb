class PhoneNumber < ActiveRecord::Base
  validates_presence_of :number, :simcard_number
  validates_uniqueness_of :number, :simcard_number
  attr_accessible :number, :is_assigned, :simcard_number
  has_one :phone
end
