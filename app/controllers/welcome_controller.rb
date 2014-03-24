class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def users_params
    params.require(:users).permit(:name)
    
  end
end