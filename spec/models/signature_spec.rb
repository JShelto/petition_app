require 'spec_helper'

describe Signature do
  it { should belong_to :user }
  it { should belong_to :petition }

  it { should validate_presence_of :petition }
  # it { should validate :user_or_info }
  # it { should validate_uniqueness_of (:user_id).scoped_to(:petition_id) }
  # it { should validate_uniqueness_of (:petition_id).scoped_to(:first_name, :last_name) }
end