class Product < ActiveRecord::Base

   has_many :category_product
   has_many :categories, through: :category_product


	validates :marca, :talla, :referencia, :costo, presence: true
	validates :talla, exclusion: { in: %w(s m),
	 message:"%{value} no manejamos esta talla"}

	 validates :costo, numericality: { only_integer: true, greater_than: 0}

	 before_save :calcular_total
	 before_save :calcular_total2

	 def calcular_total
	 	self.total = self.costo + self.costo * 0.16
	 end
	 def calcular_total2
	 	self.total = self.total +  200
	 end




end
