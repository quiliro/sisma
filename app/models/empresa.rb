class Empresa < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name               :string
    direccion          :string
    telefono           :integer
    gerente            :string
    numero_de_camiones :integer
    marca_predominante :string
    timestamps
  end

  has_many :socios, :accessible => true

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
