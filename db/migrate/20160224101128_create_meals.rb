class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.references :user, index: true, foreign_key: true
      t.references :meal_type, index: true, foreign_key: true
      t.datetime :date

      t.timestamps null: false
    end
  end
end
