# app/controllers/categories_controller.rb
class CategoriesController < ApplicationController
  before_action :ensure_admin

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path, notice: 'Catégorie créée avec succès.'
    else
      render :new
    end
  end

  # Ajoutez les méthodes edit, update, destroy, etc.

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def ensure_admin
    # Mettez en place une logique pour vous assurer que l'utilisateur est un administrateur
    redirect_to root_path, alert: 'Accès non autorisé!' unless current_user&.admin?
  end
end
