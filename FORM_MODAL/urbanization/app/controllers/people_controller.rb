class PeopleController < ApplicationController
	before_action :set_idexados
	 def set_idexados
	 	@tower= Tower.find(params[:tower_id]) 
	 	@apartment= @tower.apartments.find(params[:apartment_id])   
	 end
	def index
		@people=@apartment.people.all 
		 
	end
	
	def new
		@person= @apartment.people.new
	end 
	def edit 
		@person= @apartment.people.find(params[:id])  
	end

	def create
		@person=@apartment.people.new(person_params)
		@person.save
		redirect_to tower_apartment_people_path
	end
	def destroy
		@person= @apartment.people.find(params[:id])
		@person.destroy
		redirect_to tower_apartment_people_path
	end
	def update
		@person= @apartment.people.find(params[:id])
		@person.update(person_params) 
		redirect_to tower_apartment_people_path
	end
	def person_params
		params.require(:person).permit(:id,:nombre,:ident,:tower_id,:apartment_id)
	end

end
