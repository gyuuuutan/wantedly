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

ActiveRecord::Schema.define(version: 20170301095753) do

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                                default: "", null: false
    t.string   "encrypted_password",                   default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "name",                                              null: false
    t.string   "logo"
    t.text     "address",                limit: 65535,              null: false
    t.index ["email"], name: "index_companies_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true, using: :btree
  end

  create_table "how_products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "product_id",               null: false
    t.text     "how1",       limit: 65535, null: false
    t.text     "how2",       limit: 65535
    t.text     "how3",       limit: 65535
    t.string   "image1"
    t.string   "image2"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "members", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "company_id",               null: false
    t.string   "name",                     null: false
    t.string   "image"
    t.string   "position"
    t.text     "profile",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "company_id",       null: false
    t.string   "title",            null: false
    t.string   "image"
    t.string   "job_type",         null: false
    t.string   "application_form", null: false
    t.string   "region",           null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "what_products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "product_id",               null: false
    t.text     "what1",      limit: 65535, null: false
    t.text     "what2",      limit: 65535
    t.text     "what3",      limit: 65535
    t.string   "image1"
    t.string   "image2"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "why_products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "product_id",               null: false
    t.text     "why1",       limit: 65535, null: false
    t.text     "why2",       limit: 65535
    t.text     "why3",       limit: 65535
    t.string   "image1"
    t.string   "image2"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
