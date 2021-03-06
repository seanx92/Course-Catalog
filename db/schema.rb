# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160321195203) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_by_subjects", force: :cascade do |t|
    t.string   "subject_id",  null: false
    t.string   "course_id",   null: false
    t.string   "course_name", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "courses", primary_key: "code", force: :cascade do |t|
    t.string   "name",              null: false
    t.boolean  "independent_study"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.integer  "user_id",     null: false
    t.string   "course_id",   null: false
    t.string   "course_name", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "enrollments", ["user_id", "course_id"], name: "index_enrollments_on_user_id_and_course_id", unique: true, using: :btree

  create_table "instructors", force: :cascade do |t|
    t.string   "email"
    t.string   "first"
    t.string   "middle"
    t.string   "last"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name",         null: false
    t.string   "abbreviation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
