class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.integer :salary

      t.timestamps null: false
    end
  end
end
