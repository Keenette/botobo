class ExercicesController < ApplicationController
  def index
    @exercices = Exercice.all
  end

  def show
    @exercice = Exercice.find(params[:id])
  end

  def new
    @exercice = Exercice.new
  end

  def create
    @exercice = Exercice.new(exercice_params)
    @exercice.save
    flash[:notice] = "Le nouvel exercice a été créé"
    redirect_to exercice_path(@exercice)
  end

  private

  def exercice_params
    params.require(:exercice).permit(:name, :description, :category, :difficulty_level, :duration, video_url: [], photo: [])
  end
end
