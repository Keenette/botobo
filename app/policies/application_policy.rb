class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    true
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    current_user.role == "un club sportif"
  end

  def update?
    current_user.role == "un club sportif"
  end

  def edit?
    update?
  end

  def destroy?
    current_user.role == "un club sportif"
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      user.admin? ? scope.all : scope.where(user: user)
    end

    private

    attr_reader :user, :scope
  end
end
