class RemoveAncestryFromAreas < ActiveRecord::Migration[5.2]
  def change
    remove_column :areas, :ancestry, :string
  end
end
