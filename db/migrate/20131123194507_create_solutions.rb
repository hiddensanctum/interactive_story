class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.string :name
      t.integer :page_id
      t.timestamps
    end
  end
end
