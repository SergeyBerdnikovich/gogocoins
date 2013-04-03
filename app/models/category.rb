class Category < ActiveRecord::Base
  set_table_name "categories_95"
  attr_accessible :exported, :image, :name, :parent, :parser_id
  has_many :products
end
