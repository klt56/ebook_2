class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :year
      t.text :resume
      t.text :content
      t.belongs_to :category, index: true
      t.belongs_to :author, index: true

      t.timestamps
    end
  end
end
