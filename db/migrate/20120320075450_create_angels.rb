class CreateAngels < ActiveRecord::Migration
  def change
    create_table :angels do |t|
      t.string :name
      t.text :description
      t.string :avatar
      t.string :banner
      t.integer :user_id

      t.timestamps
    end
  end
end
