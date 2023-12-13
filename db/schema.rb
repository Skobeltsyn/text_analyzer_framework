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

ActiveRecord::Schema[7.0].define(version: 2023_11_26_204734) do
  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "conversation_replicas", force: :cascade do |t|
    t.integer "timing_in_seconds"
    t.text "content"
    t.text "tag_cloud"
    t.string "talker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "kase_id"
  end

  create_table "datasets", force: :cascade do |t|
    t.string "title"
    t.text "commentary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kases", force: :cascade do |t|
    t.text "title"
    t.text "commentary"
    t.boolean "for_learning"
    t.boolean "for_testing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "dataset_id"
  end

  create_table "parameter_desired_values", force: :cascade do |t|
    t.text "value"
    t.float "normalized_value"
    t.text "commentary"
    t.integer "kase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "conversation_replica_id"
    t.string "parameter_name"
  end

end
