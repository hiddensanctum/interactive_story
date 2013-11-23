class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.integer :question_id
      t.boolean :correct
      t.timestamps
    end
  end
end
