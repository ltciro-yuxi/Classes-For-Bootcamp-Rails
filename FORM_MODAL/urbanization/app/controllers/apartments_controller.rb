class ApartmentsController < ApplicationController
	 before_action :set_tower
	 def set_tower
	 	@tower= Tower.find(params[:tower_id])   
	 end
	def index
		@apartments=@tower.apartments.all 
		 
	end
	
	def new
		@apartment= @tower.apartments.new
	end 
	def edit 
		@apartment= @tower.apartments.find(params[:id])  
	end

	def create
		@apartment=@tower.apartments.new(apartment_params)
		@apartment.save
		redirect_to tower_apartments_path
	end
	def destroy
		@apartment= @tower.apartments.find(params[:id])
		@apartment.destroy
		redirect_to tower_apartments_path
	end
	def update
		@apartment= @tower.apartments.find(params[:id])
		@apartment.update(apartment_params) 
		redirect_to tower_apartments_path
	end
	def apartment_params
		params.require(:apartment).permit(:id,:nombre,:piso,:tower_id)
	end

end


