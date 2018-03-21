class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.references :learning, foreign_key: true
      t.references :text, foreign_key: true
      t.string :level
      t.decimal :m1
      t.decimal :m2
      t.decimal :m3
      t.decimal :m4
      t.decimal :m5
      t.decimal :m6

      t.timestamps
    end
  end
end
