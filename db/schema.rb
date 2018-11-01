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

ActiveRecord::Schema.define(version: 2018_09_14_140940) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cabines", force: :cascade do |t|
    t.string "cod"
    t.bigint "empresa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_cabines_on_empresa_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string "cpf"
    t.string "nome"
    t.date "data_niver"
    t.string "rg"
    t.boolean "sexo"
    t.string "descricao"
    t.bigint "cabine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cabine_id"], name: "index_clientes_on_cabine_id"
  end

  create_table "contactos", force: :cascade do |t|
    t.string "email"
    t.string "telefone"
    t.string "celular"
    t.bigint "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_contactos_on_cliente_id"
  end

  create_table "contatos", force: :cascade do |t|
    t.string "email"
    t.string "celular"
    t.string "telefone"
    t.bigint "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_contatos_on_cliente_id"
  end

  create_table "empresas", force: :cascade do |t|
    t.string "cnpj"
    t.string "nome_fatasia"
    t.string "setor"
    t.string "endereco"
    t.boolean "status"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cabines", "empresas"
  add_foreign_key "clientes", "cabines"
  add_foreign_key "contactos", "clientes"
  add_foreign_key "contatos", "clientes"
end
