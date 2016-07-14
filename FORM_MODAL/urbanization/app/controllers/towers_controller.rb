class TowersController < ApplicationController
  def index
    @towers=Tower.all   
  end
  def new
    @tower= Tower.new
  end 
  def edit 
    @tower= Tower.find(params[:id])  
  end

  def create
    @tower=Tower.new(tower_params)
    @tower.save
    redirect_to towers_path
  end
  def destroy
    @tower= Tower.find(params[:id])
    @tower.destroy
    redirect_to towers_path
  end
  def update
    @tower= Tower.find(params[:id])
    @tower.update(tower_params) 
    redirect_to towers_path
  end
  def tower_params
    params.require(:tower).permit(:id,:nombre,:portero)
  end

end
