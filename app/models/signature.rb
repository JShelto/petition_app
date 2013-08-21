class Signature < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :zipcode, :reason

  belongs_to :petition
  belongs_to :user

  validates_presence_of :petition
  validate :user_or_info

  def user_or_info
    unless self.user_id || (self.first_name && self.last_name && self.zipcode)
      errors.add(:base, "Please sign in or provide your full name and zipcode")
    end
  end

end
