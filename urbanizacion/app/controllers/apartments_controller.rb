class ApartmentsController < ApplicationController

	def index
		@tower= Tower.find(params[:tower_id])
  	@apartments=@tower.apartments.all
  end

  def new
  	@tower= Tower.find(params[:tower_id])
  	@apartment= @tower.apartments.new
  end

  def create
  	@tower= Tower.find(params[:tower_id])
  	apartment= @tower.apartments.new(apartment_params)
  	apartment.save
  	redirect_to  tower_apartments_path(@tower)
  end
  def edit 
  	@tower= Tower.find(params[:tower_id])
  	@apartment = @tower.apartments.find(params[:id])
  end
  def update
  	@tower= Tower.find(params[:tower_id])
  	apartment = Apartment.find(params[:id])
  	apartment.update(apartment_params)
  	redirect_to tower_apartments_path(@tower)

  end
  def destroy
  	@tower= Tower.find(params[:tower_id])
  	apartment=Apartment.find(params[:id])
  	apartment.destroy
  	redirect_to tower_apartments_path(@tower)

  end
   private

   def apartment_params
   	params.require(:apartment).permit(:id,:name,:floor, :tower_id)
   end

end
