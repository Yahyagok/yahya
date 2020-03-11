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

ActiveRecord::Schema.define(version: 2020_03_11_161429) do

  create_table "advisers", force: :cascade do |t|
    t.string "name"
    t.string "grad_university"
    t.boolean "has_car"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "num_of_parks"
    t.integer "population_in_million"
  end

  create_table "schools", force: :cascade do |t|
    t.integer "adviser_id"
    t.integer "city_id"
    t.integer "num_of_teachers"
    t.integer "num_of_employees"
    t.integer "num_of_classes"
  end

  create_table "students", force: :cascade do |t|
    t.integer "adviser_id"
    t.string "name"
    t.boolean "has_cellphone"
    t.boolean "naughty"
  end

end
