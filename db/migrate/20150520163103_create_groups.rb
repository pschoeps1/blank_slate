class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :teacher
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
     add_index :groups, [:user_id, :created_at]
  end
end
