class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :school_classes do |t|
      t.string :name
      t.string :teacher
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :school_classes, [:user_id, :created_at]
  end
end
