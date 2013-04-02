class Category < ActiveRecord::Base
  attr_accessible :exported, :image, :name, :parent, :parser_id
  has_many :products
end
