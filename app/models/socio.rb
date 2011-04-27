class Socio < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name                 :string
    apellido             :string
    fecha_de_nacimiento  :date
    telefono             :integer
    direccion            :string
    nombre_en_la_tarjeta :string
    estado               :boolean
    timestamps
  end

  has_many :encuestas, :accessible => true
  has_many :camion_socios, :accessible => true
  belongs_to :ciudad, :accessible => true
  belongs_to :empresa, :accessible => true


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
