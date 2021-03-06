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

ActiveRecord::Schema.define(version: 20181002214553) do

  create_table "augmentations", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "references"
    t.text "conceptualModel"
    t.text "configuration"
    t.text "designDiagram"
    t.text "screenshot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "screenshot_file_name"
    t.string "screenshot_content_type"
    t.integer "screenshot_file_size"
    t.datetime "screenshot_updated_at"
  end

end
