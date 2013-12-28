class CreateBookClubs < ActiveRecord::Migration
  def change
    create_table :book_clubs do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
