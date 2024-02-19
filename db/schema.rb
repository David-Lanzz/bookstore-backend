# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_03_211625) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "whatsapp"
    t.string "twitter"
    t.integer "level"
    t.bigint "school_id", null: false
    t.string "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_authors_on_school_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.integer "pages"
    t.integer "progress"
    t.string "link"
    t.bigint "author_id", null: false
    t.bigint "school_id", null: false
    t.bigint "department_id", null: false
    t.bigint "level_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
    t.index ["department_id"], name: "index_books_on_department_id"
    t.index ["level_id"], name: "index_books_on_level_id"
    t.index ["school_id"], name: "index_books_on_school_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.bigint "level_id", null: false
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "alias"
    t.index ["level_id"], name: "index_categories_on_level_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "school_id", null: false
    t.string "alias"
    t.string "logo"
    t.index ["school_id"], name: "index_departments_on_school_id"
  end

  create_table "levels", force: :cascade do |t|
    t.bigint "department_id", null: false
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_levels_on_department_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "alias"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
    t.string "password_digest"
    t.string "token"
    t.boolean "confirmed_email"
    t.string "otp"
  end

  add_foreign_key "authors", "schools"
  add_foreign_key "books", "authors"
  add_foreign_key "books", "departments"
  add_foreign_key "books", "levels"
  add_foreign_key "books", "schools"
  add_foreign_key "categories", "levels"
  add_foreign_key "departments", "schools"
  add_foreign_key "levels", "departments"
end
