class MembersController < ApplicationController

  before_action :set_products

  def new
    @company = Company.find(params[:company_id])
    @member = Member.new
  end

  def create
    @member = current_company.members.new(members_params)
    @member.save
  end

  private
  def members_params
    params.require(:member).permit(:name, :image, :position, :profile)
  end

  def set_products
    @company = Company.new
  end

end
