class CamionSocio < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    anio :integer
    timestamps
  end

  belongs_to :socio, :accessible => true
  belongs_to :tipo_de_camion, :accessible => true
  belongs_to :industria, :accessible => true
  belongs_to :marca, :accessible => true

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
