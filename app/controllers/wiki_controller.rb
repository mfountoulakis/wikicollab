class WikiController < ApplicationController
  def index
    @wiki = Wiki.all
  end

  def show
    @wiki = Wiki.find(params[:id])
  end

  def new
    @wiki = Wiki.new
  end

  def create
    @wiki = Wiki.new(wiki_params)
  end

  def edit
  end


  private

  def wiki_params
    params.require(:wiki).permit(:body, :title,)
  end
end
