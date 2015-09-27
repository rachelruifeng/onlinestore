class Category < ActiveRecord::Base
	has_many :products
	# def 
 #    	self.import(file)
 #        CSV.foreach(file.path, headers: true) do |row|
 #        Category.find_or_create_by(name: row[1])
 #        end
 #    end
end
