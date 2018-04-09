# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180409204046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "floor_plan_images", force: :cascade do |t|
    t.text "image"
    t.bigint "floor_plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["floor_plan_id"], name: "index_floor_plan_images_on_floor_plan_id"
  end

  create_table "floor_plans", force: :cascade do |t|
    t.string "title"
    t.text "info"
    t.text "main_img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "layouts", force: :cascade do |t|
    t.string "title"
    t.text "info"
    t.text "main_img"
    t.text "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_images", force: :cascade do |t|
    t.text "image"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_images_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "info"
    t.text "main_img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "floor_plan_images", "floor_plans"
  add_foreign_key "project_images", "projects"
end
