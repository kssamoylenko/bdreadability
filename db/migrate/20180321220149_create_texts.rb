class CreateTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :texts do |t|
      t.text :content
      t.references :site, foreign_key: true
      t.string :name
      t.string :level

      t.timestamps
    end
  end
end
