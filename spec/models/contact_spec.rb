require 'spec_helper'

describe Contact do
  it { should validate_presence_of :name }

  it { should have_many :phones }
  it { should have_many :emails }
  it { should have_many :addresses }
end
