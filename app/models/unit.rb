class Unit < ActiveRecord::Base
  has_many :members, :through => :unit_membership, :source => :person

  attr_accessible :designation, :unit_type, :council, :district, :active, :member_ids

  validates_presence_of :designation, :unit_type, :council
  # TODO: The new validators don't work with formtastic (6/22/10)
  #validates :designation, :presence => true
  #validates :unit_type, :presence => true
  #validates :council, :presence => true
  
end
