class ApartmentsController < ApplicationController
	before_action :set_tower 
	before_action :set_apartment , only: [:update, :destroy]

	def index
		
  	@apartments=@tower.apartments.all
  end

  def new
  	
  	@apartment= @tower.apartments.new
  end

  def create  	
  	@apartment= @tower.apartments.new(apartment_params)  	
  	if @apartment.save
  		redirect_to  tower_apartments_path(@tower), notice: "Exitoso"
  	else
  		render "new"
  	end


  	
  end
  def edit 
  	
  	@apartment = @tower.apartments.find(params[:id])
  end
  def update
  	apartment.update(apartment_params)
  	redirect_to tower_apartments_path(@tower)

  end
  def destroy
  	apartment.destroy
  	redirect_to tower_apartments_path(@tower)

  end
   private

   def set_tower
   	@tower= Tower.find(params[:tower_id])
   end
    def set_apartment
   	apartment = Apartment.find(params[:id])
   end

   def apartment_params
   	params.require(:apartment).permit(:id,:name,:floor, :tower_id)
   end

end
