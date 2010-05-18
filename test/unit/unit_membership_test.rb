require 'test_helper'

class UnitMembershipTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert UnitMembership.new.valid?
  end
end
