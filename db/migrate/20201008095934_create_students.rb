class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :school_email
      t.string :major
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
