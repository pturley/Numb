require 'spec_helper'

describe Phone do
  it { should belong_to(:phone_number) }
end
