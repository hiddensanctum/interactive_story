class RenameSolutionToQuestion < ActiveRecord::Migration
    def self.up
        rename_table :questions, :solutions2
        rename_table :solutions, :questions
        rename_table :solutions2, :solutions
    end
    def self.down
        rename_table :new_table_name, :old_table_name
    end
end
