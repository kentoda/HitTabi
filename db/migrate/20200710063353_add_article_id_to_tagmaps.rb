class AddArticleIdToTagmaps < ActiveRecord::Migration[5.2]
  def change
    add_column :tagmaps, :article_id, :integer
  end
end
