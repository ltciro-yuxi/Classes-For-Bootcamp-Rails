class Apartment < ActiveRecord::Base
	has_many :people
	belongs_to :tower
	validates  :name , presence: true
end
