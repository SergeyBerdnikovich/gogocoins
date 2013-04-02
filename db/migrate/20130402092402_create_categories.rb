class CreateCategories < ActiveRecord::Migration
  def change
    create_table "categories", :force => true do |t|
      t.string  "name",        :limit => 500,     :null => false
      t.string  "image",                          :null => false
      t.integer "parser_id",                      :null => false
      t.integer "parent",      :default => 0,     :null => false
      t.boolean "exported",    :default => false, :null => false

      t.timestamps
    end
  end
end
