class Petition < ActiveRecord::Base
  attr_accessible :title, :description

  has_many :signatures
  belongs_to :user

  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :user

end
