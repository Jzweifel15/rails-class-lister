class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :school_email
      t.string :password_digest
      t.string :major

      t.timestamps null: false
    end
  end
end
