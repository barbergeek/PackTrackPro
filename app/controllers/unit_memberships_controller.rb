class UnitMembershipsController < ApplicationController
  def index
    @unit_memberships = UnitMembership.all
  end
  
  def show
    @unit_membership = UnitMembership.find(params[:id])
  end
  
  def new
    @unit_membership = UnitMembership.new
  end
  
  def create
    @unit_membership = UnitMembership.new(params[:unit_membership])
    if @unit_membership.save
      flash[:notice] = "Successfully created unit membership."
      redirect_to @unit_membership
    else
      render :action => 'new'
    end
  end
  
  def edit
    @unit_membership = UnitMembership.find(params[:id])
  end
  
  def update
    @unit_membership = UnitMembership.find(params[:id])
    if @unit_membership.update_attributes(params[:unit_membership])
      flash[:notice] = "Successfully updated unit membership."
      redirect_to @unit_membership
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @unit_membership = UnitMembership.find(params[:id])
    @unit_membership.destroy
    flash[:notice] = "Successfully destroyed unit membership."
    redirect_to unit_memberships_url
  end
end
