class ExercicePolicy < ApplicationPolicy
  attr_reader :user, :record

  class Scope < Scope
    def resolve
      user.admin? ? scope.all : scope.joins(:categories).where(categories: { user_id: user.id })
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def new?
    authorize @user.un_club_sportif?
  end

  def create?
    authorize @user.un_club_sportif?
  end

  def update?
    record.categories.any? { |category| category.user_id == user.id } || user.admin? || user.un_club_sportif?
  end

  def destroy?
    record.categories.any? { |category| category.user_id == user.id } || user.admin? || user.un_club_sportif?
  end
end
