class CreateWebsites < ActiveRecord::Migration[5.2]
  def change
    create_table :websites do |t|
      t.string :name
      t.text :description
      t.boolean :online

      t.timestamps
    end
  end
end
