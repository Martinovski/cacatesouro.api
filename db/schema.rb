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

ActiveRecord::Schema.define(version: 2018_04_18_000521) do

  create_table "jogos", force: :cascade do |t|
    t.integer "pessoa_id"
    t.integer "pista_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pessoa_id"], name: "index_jogos_on_pessoa_id"
    t.index ["pista_id"], name: "index_jogos_on_pista_id"
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "nome"
    t.string "tipo"
    t.string "matricula"
    t.string "escola"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pistas", force: :cascade do |t|
    t.string "numero"
    t.string "localizacao"
    t.string "pontos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
