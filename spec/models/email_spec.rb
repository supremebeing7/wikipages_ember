require 'spec_helper'

describe Email do
  it { should validate_presence_of :email }
  it { should validate_presence_of :contact_id }
  it { should allow_value("email@addresse.foo").for(:email) }
  it { should_not allow_value("foo.bet").for(:email) }
  it { should belong_to :contact }


end
