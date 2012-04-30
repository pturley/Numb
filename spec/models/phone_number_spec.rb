require 'spec_helper'

describe PhoneNumber do
  it { should have_one(:phone) }
  it { should validate_presence_of(:number) }
  it { should validate_presence_of(:simcard_number) }

  it "validates uniquness of the number" do 
    PhoneNumber.create!(:number => "0784779825", :simcard_number => "434343234234")
    should validate_uniqueness_of(:number)
  end

  it "validates uniquness of the simcard number" do
    PhoneNumber.create!(:number => "0784779825", :simcard_number => "434343234234")
    should validate_uniqueness_of(:simcard_number)
  end
end
