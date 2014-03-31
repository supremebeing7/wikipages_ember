require 'spec_helper'

describe Phone do
  it { should validate_presence_of :number }
  it { should_not allow_value(1232).for(:number) }
  it { should validate_presence_of :contact_id }

  it { should belong_to :contact }

end
