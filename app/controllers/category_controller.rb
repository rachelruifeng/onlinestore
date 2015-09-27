class CategoryController < ApplicationController
  def index
  	   @catergories = Category.order(:name)
  end
end
