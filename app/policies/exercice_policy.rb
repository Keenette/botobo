class ExercicePolicy < ApplicationPolicy
  attr_reader :user, :record

  # class Scope < Scope
  #   def resolve
  #     # If user is not signed in or is an admin, return all records
  #     return scope.all unless user && !user.admin?

  #     # If user is a non-admin, filter the records based on their associations
  #     scope.joins(:categories).where(categories: { user_id: user.id })
  #   end
  # end
  def index?
    true
  end

  def show?
    true
  end

  def new?
    @user.un_club_sportif?
  end

  def create?
    user&.un_club_sportif?
  end



  def update?
    record.categories.any? { |category| category.user_id == user.id } || user.admin? || user.un_club_sportif?
  end

  def destroy?
    record.categories.any? { |category| category.user_id == user.id } || user.admin? || user.un_club_sportif?
  end
end
