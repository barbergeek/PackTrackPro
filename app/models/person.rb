class Person < ActiveRecord::Base
  has_many :units, :through => :unit_membership
  
  attr_accessible :name
end
