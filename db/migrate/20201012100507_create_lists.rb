class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.integer :student_id
      t.string :course_id

      t.timestamps null: false
    end
  end
end
