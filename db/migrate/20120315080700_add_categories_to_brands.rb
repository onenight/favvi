class AddCategoriesToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :categories, :string
  end
end
