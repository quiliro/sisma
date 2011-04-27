class Encuesta < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    observacion :text
    timestamps
  end

  belongs_to :socio, :accessible => true
  belongs_to :departamento, :accessible => true
  belongs_to :calificacion, :accessible => true

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
