class CreateBlogers < ActiveRecord::Migration
  def change
    create_table :blogers do |t|
      t.integer :angel_id
      t.integer :user_id

      t.timestamps
    end
  end
end
