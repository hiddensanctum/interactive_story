class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.text :description
      t.integer :level
      t.integer :num_page

      t.timestamps
    end
  end
end
