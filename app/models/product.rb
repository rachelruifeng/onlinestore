class Product < ActiveRecord::Base
	belongs_to :category
    def 
    	self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
        	category = Category.find_or_create_by(name: row[1])
        	product = Product.find_or_create_by(productID: row[0], category_id: category.id, productName: row[2], price: row[3])       	
        	#product.category_id << category
    	end 
    end
end
