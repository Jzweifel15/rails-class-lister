class CreateProfessors < ActiveRecord::Migration[6.0]
  def change
    create_table :professors do |t|
      t.string :name
      t.string :school_email
      t.string :password_digest
      t.string :department

      t.timestamps null: false
    end
  end
end
