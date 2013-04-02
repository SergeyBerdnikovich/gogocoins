class CreateProducts < ActiveRecord::Migration
  def change
    create_table "products", :force => true do |t|
      t.string  "title",     :limit => 500,     :null => false
      t.text    "des",                          :null => false
      t.string  "art",                          :null => false
      t.string  "images",    :limit => 1500,    :null => false
      t.string  "link",      :limit => 1000,    :null => false
      t.string  "price",                        :null => false
      t.integer "category_id",                  :null => false
      t.boolean "parsed",    :default => false, :null => false
      t.boolean "exported",  :default => false, :null => false
      t.integer "accessed"

      t.timestamps
    end
  end
end
