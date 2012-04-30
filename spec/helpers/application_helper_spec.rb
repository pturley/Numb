require 'spec_helper'

describe ApplicationHelper do
  describe "#print_errors" do
    it "doesnt print anything if there are no errors" do
      fake_model = mock(:errors => mock(:any? => false))
      helper.print_errors(fake_model).should be_blank
    end

    it "puts things in an error div if there are errors" do
      fake_model = mock(:errors => mock(:any? => true, :full_messages => ["ahhhh"]))
      helper.print_errors(fake_model).should =~ /alert alert-error/
    end

    it "has an li for every error message" do
      fake_model = mock(:errors => mock(:any? => true, :full_messages => ["ahhhh", "weeaf", "asfdsdf"]))
      helper.print_errors(fake_model).scan(/\/li/).size.should == 3
    end
  end
end