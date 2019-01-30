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

ActiveRecord::Schema.define(version: 2019_01_29_210731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "user_name"
    t.string "names"
    t.string "last_names"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consulting_rooms", force: :cascade do |t|
    t.string "address"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "city"
    t.string "first_photo"
    t.string "sub_photo"
    t.string "state"
    t.integer "user_id"
    t.integer "reemper_information_id"
    t.boolean "info_state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "category_id"
    t.string "country"
    t.string "city"
    t.integer "profession_id"
    t.integer "specialty_id"
    t.string "instagram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "information_academics", force: :cascade do |t|
    t.string "type"
    t.date "start_date"
    t.date "finish_date"
    t.integer "user_id"
    t.string "file"
    t.text "description"
    t.boolean "info_state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professions", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reemp_requests", force: :cascade do |t|
    t.string "admin_state"
    t.integer "reemper_information_id"
    t.text "comment"
    t.integer "number_request"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reemper_academic_informations", force: :cascade do |t|
    t.integer "reemper_information_id"
    t.boolean "info_state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reemper_informations", force: :cascade do |t|
    t.string "reempe_category"
    t.string "document_type"
    t.string "document_number"
    t.string "professional_card"
    t.string "academy_level"
    t.string "judicial_background_file"
    t.string "profesional_card_file"
    t.text "biography"
    t.string "reemper_type", default: "static"
    t.boolean "reemper_state_location"
    t.integer "reemp_level"
    t.integer "profession_id"
    t.integer "specialty_id"
    t.integer "consulting_room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "admin_state"
    t.integer "user_id"
    t.boolean "info_state"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "category_id"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subspecialties", force: :cascade do |t|
    t.integer "specialty_id"
    t.string "name"
    t.text "description"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "expires_at"
    t.string "expires_ats"
    t.string "provider"
    t.string "acces_token"
    t.string "refresh_token"
    t.string "uid"
    t.string "token"
    t.string "user_name"
    t.string "names"
    t.string "last_names"
    t.string "phone"
    t.string "avatar"
    t.string "city"
    t.boolean "state"
    t.string "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quelification"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
