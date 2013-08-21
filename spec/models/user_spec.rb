require 'spec_helper'

describe User do
  it { should have_many :petitions }
  it { should have_many :signatures }

  #devise validates_presence_of :email and validates_uniqueness_of :email
end
