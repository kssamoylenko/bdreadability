class CreateLearnings < ActiveRecord::Migration[5.1]
  def change
    create_table :learnings do |t|
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
