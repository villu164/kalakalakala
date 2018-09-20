class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :full_name
      t.string :position
      t.text :bio

      t.timestamps
    end
  end
end
