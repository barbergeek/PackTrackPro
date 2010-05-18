class UnitMembership < ActiveRecord::Base
  has_and_belongs_to_many :units
  has_and_belongs_to_many :people
  attr_accessible :unit_id, :person_id, :role, :active
end
