class CreateServicios < ActiveRecord::Migration[5.1]
  def change
    create_table :servicios do |t|
      t.integer :tipo_servicio_cod
      t.string :descripcion
      t.decimal :tarifa
      t.integer :estacionamiento_cod

      t.timestamps
    end
  end
end
