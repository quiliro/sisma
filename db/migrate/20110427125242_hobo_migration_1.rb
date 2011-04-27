class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :tipo_de_camions do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :calificacions do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :ciudads do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :zonas do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :departamentos do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :socios do |t|
      t.string   :name
      t.string   :apellido
      t.date     :fecha_de_nacimiento
      t.integer  :telefono
      t.string   :direccion
      t.string   :nombre_en_la_tarjeta
      t.boolean  :estado
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :vendedors do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :encuestas do |t|
      t.text     :observacion
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :provincias do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :marcas do |t|
      t.string   :name
      t.string   :modelo
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :camion_socios do |t|
      t.integer  :anio
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :industrias do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :empresas do |t|
      t.string   :name
      t.string   :direccion
      t.integer  :telefono
      t.string   :gerente
      t.integer  :numero_de_camiones
      t.string   :marca_predominante
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :tipo_de_camions
    drop_table :calificacions
    drop_table :ciudads
    drop_table :zonas
    drop_table :departamentos
    drop_table :socios
    drop_table :vendedors
    drop_table :encuestas
    drop_table :provincias
    drop_table :marcas
    drop_table :camion_socios
    drop_table :industrias
    drop_table :empresas
  end
end
