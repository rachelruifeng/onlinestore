class ProductsController < ApplicationController
    
    def import
        Product.import(params[:file])    
        redirect_to :controller => 'category', :action => 'index', notice: "Products imported."
    end

    def show
    	@products = Product.where(category_id: params[:id]).order(:productName).paginate(page: params[:page], per_page: 5)

    end 


end
