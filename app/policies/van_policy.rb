class VanPolicy < ApplicationPolicy
  def index?
    true # possibilite pour n'importe quel user de voir la page index
  end

  def show?
    true # possibilite pour n'importe quel user de voir la page show
  end

  def create?
    true
  end

  def new?
    true
  end

  def update?
    record.user == user
    # - record: the restaurant passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
