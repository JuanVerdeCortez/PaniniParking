class Alquiler < ApplicationRecord
	validates :estacionamiento_cod, :presence => { message: "es un campo obligatorio" }
    validates :fecha_inicio, :presence => true
    validates :fecha_fin, :presence => true

    validate :valid_date_range_required

	def valid_date_range_required
	  if (fecha_inicio && fecha_fin) && (fecha_fin < fecha_inicio)
	    errors.add(:valid_until, "La fecha fin no debe ser menor a la fecha de inicio")
	  end
	end

end
