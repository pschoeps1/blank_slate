class Addtable < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :email
      t.datetime :start_at
      t.datetime :end_at
      t.string :content

      t.timestamps null: false
  end
end
end