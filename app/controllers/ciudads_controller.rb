class CiudadsController < ApplicationController

  hobo_model_controller

  auto_actions :all

  auto_actions_for :provincia, [:new, :create]


end
