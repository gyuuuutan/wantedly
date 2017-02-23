class ProductsController < ApplicationController

  before_action :set_products

  def index
  end

  def show
  end

  private
  def set_products
    @company = Company.new
  end

end
