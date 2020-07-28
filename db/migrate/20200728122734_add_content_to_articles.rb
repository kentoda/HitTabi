class AddContentToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :content, :text
    change_column :articles, :content, :text, :limit => 4294967295
  end
end
