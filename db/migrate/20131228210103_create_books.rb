class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author_last
      t.string :author_first
      t.integer :isbn
      t.text :description
      t.string :subtitle

      t.timestamps
    end
  end
end
