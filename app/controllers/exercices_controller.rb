class ExercicesController < ApplicationController
  def index
    @exercice = Exercice.all
  end

  def show
    @exercice = Exercice.find(params[:id])
  end

  def new
    @exercice = Exercice.new
    flash[:notice] = "Le nouvel exercice a été créé"
    @exercice.save
    redirect_to exercice_path(@exercice)
  end

  private

  def exercice_params
    params.require(:exercice).permit(:name, :description, :category, :difficulty_level, :duration)
  end
end
