class ExercicesController < ApplicationController
  def index
    @exercices = Exercice.all
  end

  def show
    @exercices = Exercice.find(params[:id])
  end
end
