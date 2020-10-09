# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_08_095952) do

  create_table "courses", force: :cascade do |t|
    t.string "course_name"
    t.integer "students_id"
    t.integer "professors_id"
    t.index ["professors_id"], name: "index_courses_on_professors_id"
    t.index ["students_id"], name: "index_courses_on_students_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string "name"
    t.string "school_email"
    t.string "department"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "school_email"
    t.string "major"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
