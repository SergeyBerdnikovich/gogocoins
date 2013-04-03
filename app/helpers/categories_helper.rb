module CategoriesHelper
  def categories_breadcrumb(parent_id)
    parent = parent_id
    links = []
    while parent != 0 do
      category = Category.find(parent)
      parent = category.parent
      if category.id != parent_id.to_i
        links << link_to(category.name, categories_path(:parent_id => category.id))
      else
        links << category.name
      end
    end
    links.reverse
  end
  def product_breadcrumb(product)
    parent = @product.category.id
    links = []
    while parent != 0 do
      category = Category.find(parent)
      parent = category.parent

      links << link_to(category.name, categories_path(:parent_id => category.id))
    end
    links.reverse << product.title
  end
end
