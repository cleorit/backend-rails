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

ActiveRecord::Schema.define(version: 2021_11_14_153834) do

  create_table "langs", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["code"], name: "index_langs_on_code", unique: true
    t.index ["name"], name: "index_langs_on_name", unique: true
  end

  create_table "sentences", force: :cascade do |t|
    t.string "text"
    t.integer "previous_id"
    t.integer "lang_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "parent_id"
    t.index ["lang_id"], name: "index_sentences_on_lang_id"
    t.index ["parent_id"], name: "index_sentences_on_parent_id"
    t.index ["previous_id"], name: "index_sentences_on_previous_id"
    t.index ["text"], name: "index_sentences_on_text", unique: true
  end

  add_foreign_key "sentences", "langs"
  add_foreign_key "sentences", "sentences", column: "parent_id"
  add_foreign_key "sentences", "sentences", column: "previous_id"
end
