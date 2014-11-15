class Warrior < ActiveRecord::Base
  attr_accessible :name
  has_many :scores

  validates_presence_of :name
end
