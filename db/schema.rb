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

ActiveRecord::Schema.define(version: 2018_08_15_232019) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bamboo_comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.bigint "bamboo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bamboo_id"], name: "index_bamboo_comments_on_bamboo_id"
  end

  create_table "bamboos", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_bamboos_on_post_id"
  end

  create_table "free_comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.bigint "freepost_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["freepost_id"], name: "index_free_comments_on_freepost_id"
  end

  create_table "freeposts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_freeposts_on_post_id"
  end

  create_table "grad_comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.bigint "graduate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["graduate_id"], name: "index_grad_comments_on_graduate_id"
  end

  create_table "graduates", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_graduates_on_post_id"
  end

  create_table "job_comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.bigint "jobpost_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jobpost_id"], name: "index_job_comments_on_jobpost_id"
  end

  create_table "jobposts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_jobposts_on_post_id"
  end

  create_table "market_comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.bigint "market_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["market_id"], name: "index_market_comments_on_market_id"
  end

  create_table "markets", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_markets_on_post_id"
  end

  create_table "recruit_comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.bigint "recruit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recruit_id"], name: "index_recruit_comments_on_recruit_id"
  end

  create_table "recruits", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_recruits_on_post_id"
  end

  create_table "sponsor_comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.bigint "sponsorpost_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sponsorpost_id"], name: "index_sponsor_comments_on_sponsorpost_id"
  end

  create_table "sponsorposts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_sponsorposts_on_post_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.string "email"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bamboo_comments", "bamboos"
  add_foreign_key "free_comments", "freeposts"
  add_foreign_key "grad_comments", "graduates"
  add_foreign_key "job_comments", "jobposts"
  add_foreign_key "market_comments", "markets"
  add_foreign_key "recruit_comments", "recruits"
  add_foreign_key "sponsor_comments", "sponsorposts"
end
