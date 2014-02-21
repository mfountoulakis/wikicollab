class WikisController < ApplicationController
  def index
    @wiki = Wiki.all
  end

  def show
    @wiki = Wiki.find(params[:id])
  end

  def new
    @wiki = Wiki.new
    @posts = policy_scope(Wiki.scoped)

  end

  def create
    @wiki = Wiki.new(wiki_params)
   if @wiki.save
    flash[:notice] = "Wiki was saved."
    redirect_to @wiki
   else
    flash[:error] = "There was an error saving the wiki. Please try again."
    render :new
   end
  end

  def update
    @wiki = Wiki.find(params[:id])
      authorize @wiki
    if @wiki.update_attributes(wiki_params)
      flash[:notice] = "Wiki was updated"
      redirect_to @wiki
    else
      flash[:error] = "There's been an error saving the wiki"
      render :edit
    end
  end

  def edit
    @wiki = Wiki.find(params[:id])
  end


  private

  def wiki_params
    params.require(:wiki).permit(:body, :title,)
  end
end
