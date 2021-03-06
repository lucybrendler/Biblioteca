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

ActiveRecord::Schema.define(version: 2020_01_15_001251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "tipo_persona"
    t.string "username"
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "autor", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false
    # t.boolean "activo"
  end

  create_table "categoria", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detalle_prestamos", force: :cascade do |t|
    t.date "fecha"
    t.integer "catidad_material"
    t.integer "devuelto"
    t.bigint "material_id"
    t.bigint "prestamo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "fecha_devolucion"
    t.integer "cantidad_devuelto"
    t.index ["material_id"], name: "index_detalle_prestamos_on_material_id"
    t.index ["prestamo_id"], name: "index_detalle_prestamos_on_prestamo_id"
  end

  create_table "editorials", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    #t.boolean "activo"
  end

  create_table "libros", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string "descripcion"
    t.string "cantidad"
    t.string "disponible"
    t.string "nro_material"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "activo"
    t.bigint "autor_id"
    t.bigint "editorial_id"
    t.bigint "categoria_id"
    t.bigint "tipo_material_id"
    t.index ["autor_id"], name: "index_materials_on_autor_id"
    t.index ["categoria_id"], name: "index_materials_on_categoria_id"
    t.index ["editorial_id"], name: "index_materials_on_editorial_id"
    t.index ["tipo_material_id"], name: "index_materials_on_tipo_material_id"
  end

  create_table "mermas", force: :cascade do |t|
    t.date "fecha"
    t.integer "cantidad"
    t.bigint "material_id"
    #t.datetime "created_at", null: false
    #t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_mermas_on_material_id"
  end

  create_table "prestamos", force: :cascade do |t|
    t.date "fecha"
    #t.datetime "created_at", null: false
    #t.datetime "updated_at", null: false
    t.bigint "admin_user_id"
    t.date "fecha_dev"
    t.boolean "devuelto"
    t.index ["admin_user_id"], name: "index_prestamos_on_admin_user_id"
  end

  create_table "tipo_materials", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "detalle_prestamos", "materials"
  add_foreign_key "detalle_prestamos", "prestamos"
  add_foreign_key "materials", "autors"
  add_foreign_key "materials", "categoria", column: "categoria_id"
  add_foreign_key "materials", "editorials"
  add_foreign_key "materials", "tipo_materials"
  add_foreign_key "mermas", "materials"
  add_foreign_key "prestamos", "admin_users"
end
