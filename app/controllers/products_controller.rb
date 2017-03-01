class ProductsController < ApplicationController

  before_action :set_products

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
    @product.what_products.build
    @product.why_products.build
    @product.how_products.build
  end

  def create
    @product = current_company.products.new(product_params)
    if @product.save
      redirect_to products_path
    end
  end

  private
  def product_params
    params.require(:product).permit(
      :title, :image, :job_type, :application_form, :region,
      what_products_attributes: [:what1, :what2, :what3, :image1, :image2],
      why_products_attributes: [:why1, :why2, :why3, :image1, :image2],
      how_products_attributes: [:how1, :how2, :how3, :image1, :image2]
      )
  end

  def set_products
    @company = Company.new
  end

end
