class PetitionsController < ApplicationController

  def index
    @petitions = Petition.all
  end

  def show
    @petition = Petition.find(params[:id])
  end

  def new
    @petition = Petition.new
  end

  def create
    @petition = Petition.new(params[:petition])
    @petition.user = current_user
    if @petition.save
      redirect_to petitions_path
    else
      render :new
    end
  end 

  def destroy
    @petition = Petition.find(params[:id])
    if @petition.destroy
      redirect_to petitions_path
    else
      render :js => "alert('error deleting comment');"
    end
  end


end
