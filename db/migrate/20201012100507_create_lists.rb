class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.belongs_to :student
      t.references :courses

      t.timestamps null: false
    end
  end
end
