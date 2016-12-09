class ProductsController < ApplicationController
  before_action :set_product, only: [ :show ]

  def show
  end

  private
    def set_product
      @product = Product.friendly.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:code, :name, :description, :price)
    end
end
