class WikiPolicy

  attr_reader :user, :wiki

  def initialize(user, wiki)
    @user = user
    @wiki = wiki
  end

  def index?
    true
  end

  def new?
    !!user
  end

  def edit?
    !!user
  end

  def update?
    !!user
  end


  def create?
    !!user
  end

  def destroy?
    !!user
  end
end