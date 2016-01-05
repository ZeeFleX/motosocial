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

ActiveRecord::Schema.define(version: 20160105102516) do

  create_table "brake_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "brands", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "engine_cooling_systems", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "engine_cylinder_placements", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "engine_final_transmissions", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "engine_fuel_systems", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "engine_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "features", force: :cascade do |t|
    t.integer  "size_length",                  limit: 4
    t.integer  "size_width",                   limit: 4
    t.integer  "size_height",                  limit: 4
    t.integer  "weight",                       limit: 4
    t.integer  "wheelbase",                    limit: 4
    t.float    "fuel_consumption",             limit: 24
    t.integer  "max_speed",                    limit: 4
    t.float    "dynamic",                      limit: 24
    t.integer  "engine_cylinders",             limit: 4
    t.integer  "engine_strokes",               limit: 4
    t.integer  "engine_displacement",          limit: 4
    t.float    "engine_compression",           limit: 24
    t.integer  "engine_gears",                 limit: 4
    t.integer  "clearance",                    limit: 4
    t.float    "fuel_capacity",                limit: 24
    t.float    "oil_capacity",                 limit: 24
    t.integer  "front_brake_dia",              limit: 4
    t.integer  "rear_brake_dia",               limit: 4
    t.string   "front_tyre",                   limit: 255
    t.string   "rear_tyre",                    limit: 255
    t.datetime "production_start"
    t.datetime "production_end"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "engine_final_transmission_id", limit: 4
    t.integer  "engine_type_id",               limit: 4
    t.integer  "engine_fuel_system_id",        limit: 4
    t.integer  "engine_cylinder_placement_id", limit: 4
    t.integer  "ignition_system_id",           limit: 4
    t.integer  "engine_cooling_system_id",     limit: 4
    t.integer  "starter_system_id",            limit: 4
    t.integer  "front_brake_type_id",          limit: 4
    t.integer  "rear_brake_type_id",           limit: 4
  end

  create_table "ignition_systems", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "models", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "brand_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "type_id",    limit: 4
    t.integer  "feature_id", limit: 4
  end

  create_table "models_profiles", force: :cascade do |t|
    t.integer "profile_id", limit: 4
    t.integer "model_id",   limit: 4
  end

  add_index "models_profiles", ["model_id"], name: "index_models_profiles_on_model_id", using: :btree
  add_index "models_profiles", ["profile_id"], name: "index_models_profiles_on_profile_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "firstname",  limit: 255
    t.string   "surname",    limit: 255
    t.datetime "birthdate"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "starter_systems", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
