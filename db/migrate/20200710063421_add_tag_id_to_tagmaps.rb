class AddTagIdToTagmaps < ActiveRecord::Migration[5.2]
  def change
    add_column :tagmaps, :tag_id, :integer
  end
end
