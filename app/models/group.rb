class Group < ActiveRecord::Base
  attr_accessible :name, :unit_id, :group_type, :rank, :event_id
end
