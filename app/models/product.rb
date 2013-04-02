class Product < ActiveRecord::Base
  attr_accessible :accessed, :art, :category_id, :des, :exported, :images, :link, :parsed, :price, :title
  belongs_to :category
end
