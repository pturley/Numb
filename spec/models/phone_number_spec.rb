require 'spec_helper'

describe PhoneNumber do
  it { should have_one(:phone) }
  
  it "validates uniquness of the number" do 
    PhoneNumber.create!(:number => "0784779825")
    should validate_uniqueness_of(:number)
  end
end
