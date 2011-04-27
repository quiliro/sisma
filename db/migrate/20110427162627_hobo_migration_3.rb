class HoboMigration3 < ActiveRecord::Migration
  def self.up
    remove_column :marcas, :modelo
  end

  def self.down
    add_column :marcas, :modelo, :string
  end
end
