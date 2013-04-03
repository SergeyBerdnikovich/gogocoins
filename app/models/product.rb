class Product < ActiveRecord::Base
	  set_table_name "products_95"
  attr_accessible :accessed, :art, :category_id, :des, :exported, :images, :link, :parsed, :price, :title
  belongs_to :category
end
