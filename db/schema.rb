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

ActiveRecord::Schema.define(version: 20180507025558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cantidads", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cotiz_clo_muls", force: :cascade do |t|
    t.string "correo"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cantidad_id"
    t.string "cantidad"
    t.string "alturaCloMul"
    t.string "anchuraCloMul"
    t.string "colorCloMul"
    t.string "materialCloMul"
    t.string "tipManijasCloMul"
    t.string "numRepisasCloMul"
    t.index ["cantidad_id"], name: "index_cotiz_clo_muls_on_cantidad_id"
  end

  create_table "cotiz_esc_cams", force: :cascade do |t|
    t.string "correo"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cotiz_mes_cams", force: :cascade do |t|
    t.string "correo"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cotiz_mes_exps", force: :cascade do |t|
    t.string "correo"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cotiz_clo_muls", "cantidads"
end
