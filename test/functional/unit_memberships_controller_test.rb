require 'test_helper'

class UnitMembershipsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => UnitMembership.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    UnitMembership.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    UnitMembership.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to unit_membership_url(assigns(:unit_membership))
  end
  
  def test_edit
    get :edit, :id => UnitMembership.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    UnitMembership.any_instance.stubs(:valid?).returns(false)
    put :update, :id => UnitMembership.first
    assert_template 'edit'
  end
  
  def test_update_valid
    UnitMembership.any_instance.stubs(:valid?).returns(true)
    put :update, :id => UnitMembership.first
    assert_redirected_to unit_membership_url(assigns(:unit_membership))
  end
  
  def test_destroy
    unit_membership = UnitMembership.first
    delete :destroy, :id => unit_membership
    assert_redirected_to unit_memberships_url
    assert !UnitMembership.exists?(unit_membership.id)
  end
end
