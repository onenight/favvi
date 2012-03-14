class AddImageToBrand < ActiveRecord::Migration
  def change
    add_column :brands, :image, :string
  end
end
