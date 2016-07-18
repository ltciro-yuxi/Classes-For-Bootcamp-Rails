class Product < ActiveRecord::Base
	validates :marca, :talla, :referencia, :costo, presence: true
	validates :talla, exclusion: { in: %w(s m),
	 message:"%{value} no manejamos esta talla"}

	 validates :costo, numericality: { only_integer: true, greater_than: 0}
end
