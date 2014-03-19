class WikisController < ApplicationController

  def index
    @public_wikis = Wiki.where(private: false)
    @private_wikis = current_user.wikis.where(private: true)
    @collaborations = current_user.collaborations
  end

  def show
    @wiki = Wiki.find(params[:id])
  end

  def new
    @wiki = Wiki.new
     authorize @wiki
    @users = User.without_user(current_user)
  end



  def create
    @wiki = Wiki.new(wiki_params)
    authorize @wiki
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
    @users = User.without_user(current_user)#Should not include logged in user
  end



  def destroy
    @wiki = Wiki.find(params[:id])
    authorize @wiki
    if @wiki.destroy
      flash[:notice] = "Wiki was succesfully removed"
      redirect_to @wiki
    else
      flash[:error] = "There was an error removing the wiki"
    end
  end


  private

  def wiki_params
    params.require(:wiki).permit(:without_user,
                                 :body,
                                 :title,
                                 :susbscription,
                                 :name,
                                 :private,
                                 collaborator_ids: [])
  end

end
