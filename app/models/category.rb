class Category < ActiveRecord::Base
  attr_accessible :exported, :image, :name, :parent, :parser_id
end
