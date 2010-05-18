class Unit < ActiveRecord::Base
  has_many :members, :through => :unit_membership, :source => :person

  attr_accessible :designation, :unit_type, :council, :district, :active
end
