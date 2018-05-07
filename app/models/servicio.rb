class Servicio < ApplicationRecord

validates :descripcion, :presence => { message: "es un campo obligatorio" }, :length => { :minimum => 3 }
validates :tarifa, format: { with: /\d+(\.\d{1,2})?/,
    message: "solo acepta valores numericos" }

end
