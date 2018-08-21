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

ActiveRecord::Schema.define(version: 2018_08_09_134130) do

  create_table "daily_assortments", force: :cascade do |t|
    t.date "assortment_start_date"
    t.integer "article_id"
    t.integer "store_id"
    t.boolean "in_cluster_only_because_of_promotion"
    t.boolean "in_elimination"
    t.date "provisioning_start_date"
    t.date "replenishment_start_date"
    t.boolean "is_replenishable"
    t.string "article_name"
    t.integer "sub_family_id"
    t.integer "substitute_article_id"
    t.integer "sub_category_id"
    t.boolean "is_article_without_price"
    t.boolean "is_orderable_and_loadable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_categories", force: :cascade do |t|
    t.integer "sub_category_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_families", force: :cascade do |t|
    t.integer "sub_family_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
