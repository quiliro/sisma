class HoboMigration2 < ActiveRecord::Migration
  def self.up
    add_column :ciudads, :provincia_id, :integer
    add_column :ciudads, :zona_id, :integer

    add_column :zonas, :vendedor_id, :integer

    add_column :socios, :ciudad_id, :integer
    add_column :socios, :empresa_id, :integer

    add_column :encuestas, :socio_id, :integer
    add_column :encuestas, :departamento_id, :integer
    add_column :encuestas, :calificacion_id, :integer

    add_column :camion_socios, :socio_id, :integer
    add_column :camion_socios, :tipo_de_camion_id, :integer
    add_column :camion_socios, :industria_id, :integer
    add_column :camion_socios, :marca_id, :integer

    add_index :ciudads, [:provincia_id]
    add_index :ciudads, [:zona_id]

    add_index :zonas, [:vendedor_id]

    add_index :socios, [:ciudad_id]
    add_index :socios, [:empresa_id]

    add_index :encuestas, [:socio_id]
    add_index :encuestas, [:departamento_id]
    add_index :encuestas, [:calificacion_id]

    add_index :camion_socios, [:socio_id]
    add_index :camion_socios, [:tipo_de_camion_id]
    add_index :camion_socios, [:industria_id]
    add_index :camion_socios, [:marca_id]
  end

  def self.down
    remove_column :ciudads, :provincia_id
    remove_column :ciudads, :zona_id

    remove_column :zonas, :vendedor_id

    remove_column :socios, :ciudad_id
    remove_column :socios, :empresa_id

    remove_column :encuestas, :socio_id
    remove_column :encuestas, :departamento_id
    remove_column :encuestas, :calificacion_id

    remove_column :camion_socios, :socio_id
    remove_column :camion_socios, :tipo_de_camion_id
    remove_column :camion_socios, :industria_id
    remove_column :camion_socios, :marca_id

    remove_index :ciudads, :name => :index_ciudads_on_provincia_id rescue ActiveRecord::StatementInvalid
    remove_index :ciudads, :name => :index_ciudads_on_zona_id rescue ActiveRecord::StatementInvalid

    remove_index :zonas, :name => :index_zonas_on_vendedor_id rescue ActiveRecord::StatementInvalid

    remove_index :socios, :name => :index_socios_on_ciudad_id rescue ActiveRecord::StatementInvalid
    remove_index :socios, :name => :index_socios_on_empresa_id rescue ActiveRecord::StatementInvalid

    remove_index :encuestas, :name => :index_encuestas_on_socio_id rescue ActiveRecord::StatementInvalid
    remove_index :encuestas, :name => :index_encuestas_on_departamento_id rescue ActiveRecord::StatementInvalid
    remove_index :encuestas, :name => :index_encuestas_on_calificacion_id rescue ActiveRecord::StatementInvalid

    remove_index :camion_socios, :name => :index_camion_socios_on_socio_id rescue ActiveRecord::StatementInvalid
    remove_index :camion_socios, :name => :index_camion_socios_on_tipo_de_camion_id rescue ActiveRecord::StatementInvalid
    remove_index :camion_socios, :name => :index_camion_socios_on_industria_id rescue ActiveRecord::StatementInvalid
    remove_index :camion_socios, :name => :index_camion_socios_on_marca_id rescue ActiveRecord::StatementInvalid
  end
end
