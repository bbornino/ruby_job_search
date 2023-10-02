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

ActiveRecord::Schema[7.0].define(version: 2023_10_02_140819) do
  create_table "job_postings", force: :cascade do |t|
    t.string "company_name"
    t.string "company_url"
    t.string "posting_title"
    t.string "posting_id"
    t.string "posting_url"
    t.string "posting_location_city"
    t.string "posting_location_type"
    t.text "posting_comments"
    t.datetime "applied_at"
    t.datetime "rejected_at"
    t.binary "company_logo"
    t.integer "job_site_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "archive"
    t.string "employment_type"
    t.string "pay_range"
    t.index ["job_site_id"], name: "index_job_postings_on_job_site_id"
  end

  create_table "job_sites", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "review_text"
    t.string "email_alert_info"
    t.text "description"
    t.boolean "active"
    t.boolean "stores_resume"
    t.integer "rating"
    t.datetime "resume_updated_at"
    t.binary "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "last_visited_at"
    t.string "resume_format"
    t.boolean "github_field"
    t.boolean "project_site_field"
  end

  create_table "search_engines", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "review_text"
    t.string "email_alert_info"
    t.text "description"
    t.boolean "active"
    t.boolean "stores_resume"
    t.integer "rating"
    t.datetime "resume_updated_at"
    t.binary "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "job_postings", "job_sites"
end
