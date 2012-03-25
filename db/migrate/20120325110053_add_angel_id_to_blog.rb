class AddAngelIdToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :angel_id, :integer
  end
end
