class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :image
      t.text :story
      t.integer :book_id

      t.timestamps
    end
  end
end
