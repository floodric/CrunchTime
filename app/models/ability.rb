class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.role? :admin
      can :manage, :all
    elsif user.role? :member
      # can read themselves
      can :read, :all

      can :create, User
 
      can :update, User do |u|
        u.id == user.id
      end
   
      can :update, Group do |g|
        g.users.include?(u)
      end

    else
      can :create, :user
      can :read, :groups
    end
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
