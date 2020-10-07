class CreateClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :classes do |t|
      t.string :course_name
      t.belongs_to :student
      t.belongs_to :professor

      t.timestamps null: false
    end
  end
end
