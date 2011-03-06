class Ability
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user
 
    if user.role? :Admin
      can :manage, :all
      can :publish, Article
    elsif user.role? :Moderator
      can :read, [Article, Comment]
      can [:edit, :update], Comment
    elsif user.role? :Member
       can :read, :all
       can :create, [Article, Comment]
       can [:update, :destroy],  Article do |article|
          article.try(:user) == user
       end
       can [:edit, :update], Comment
    end
  end
end