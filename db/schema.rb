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

ActiveRecord::Schema.define(version: 2019_03_06_131324) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "user_name"
    t.string "name"
    t.string "last_name"
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
    t.decimal "lat"
    t.decimal "lng"
    t.string "city"
    t.string "first_photo"
    t.string "sub_photo"
    t.string "state"
    t.integer "user_id"
    t.integer "reemper_id"
    t.boolean "info_state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contac_reempers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "reemper_id"
    t.text "description"
    t.text "answer"
    t.string "state_request"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "category_id"
    t.string "country"
    t.string "profession_name"
    t.string "specialty_name"
    t.string "city"
    t.integer "profession_id"
    t.integer "specialty_id"
    t.string "instagram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professions", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reemper_valorations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "reemper_id"
    t.integer "valoration"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reempers", force: :cascade do |t|
    t.string "document_type"
    t.string "document_numer"
    t.string "profession_card"
    t.string "academy_leve"
    t.string "profession"
    t.string "university"
    t.boolean "university_state"
    t.text "biography"
    t.string "language"
    t.integer "specialty_id"
    t.integer "category_id"
    t.integer "user_id"
    t.boolean "verified"
    t.string "category_name"
    t.string "specialty_name"
    t.string "city"
    t.integer "valoration"
    t.string "academy_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "lat"
    t.decimal "lng"
    t.string "instagram"
    t.string "facebook"
    t.string "twitter"
    t.string "state_loc"
    t.string "img_reemp"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
