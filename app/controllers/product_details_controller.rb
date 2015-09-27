class ProductDetailsController < ApplicationController
  def show
        @products = Product.where(id: params[:id])
  end
end
