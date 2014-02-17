class WikiController < ApplicationController
  def index
    @Wiki = Wiki.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
