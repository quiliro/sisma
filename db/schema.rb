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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110427162627) do

  create_table "calificacions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "camion_socios", :force => true do |t|
    t.integer  "anio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "socio_id"
    t.integer  "tipo_de_camion_id"
    t.integer  "industria_id"
    t.integer  "marca_id"
  end

  add_index "camion_socios", ["industria_id"], :name => "index_camion_socios_on_industria_id"
  add_index "camion_socios", ["marca_id"], :name => "index_camion_socios_on_marca_id"
  add_index "camion_socios", ["socio_id"], :name => "index_camion_socios_on_socio_id"
  add_index "camion_socios", ["tipo_de_camion_id"], :name => "index_camion_socios_on_tipo_de_camion_id"

  create_table "ciudads", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "provincia_id"
    t.integer  "zona_id"
  end

  add_index "ciudads", ["provincia_id"], :name => "index_ciudads_on_provincia_id"
  add_index "ciudads", ["zona_id"], :name => "index_ciudads_on_zona_id"

  create_table "departamentos", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresas", :force => true do |t|
    t.string   "name"
    t.string   "direccion"
    t.integer  "telefono"
    t.string   "gerente"
    t.integer  "numero_de_camiones"
    t.string   "marca_predominante"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "encuestas", :force => true do |t|
    t.text     "observacion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "socio_id"
    t.integer  "departamento_id"
    t.integer  "calificacion_id"
  end

  add_index "encuestas", ["calificacion_id"], :name => "index_encuestas_on_calificacion_id"
  add_index "encuestas", ["departamento_id"], :name => "index_encuestas_on_departamento_id"
  add_index "encuestas", ["socio_id"], :name => "index_encuestas_on_socio_id"

  create_table "industrias", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marcas", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provincias", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "socios", :force => true do |t|
    t.string   "name"
    t.string   "apellido"
    t.date     "fecha_de_nacimiento"
    t.integer  "telefono"
    t.string   "direccion"
    t.string   "nombre_en_la_tarjeta"
    t.boolean  "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ciudad_id"
    t.integer  "empresa_id"
  end

  add_index "socios", ["ciudad_id"], :name => "index_socios_on_ciudad_id"
  add_index "socios", ["empresa_id"], :name => "index_socios_on_empresa_id"

  create_table "tipo_de_camions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                   :default => "active"
    t.datetime "key_timestamp"
  end

  add_index "users", ["state"], :name => "index_users_on_state"

  create_table "vendedors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zonas", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vendedor_id"
  end

  add_index "zonas", ["vendedor_id"], :name => "index_zonas_on_vendedor_id"

end
