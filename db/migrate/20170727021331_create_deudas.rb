class CreateDeudas < ActiveRecord::Migration[5.0]
  def change
    create_table :deudas do |t|
      t.string :nombre
      t.string :correo
      t.string :correo
      t.string :telefono
      t.string :valor
      t.string :interes

      t.timestamps
    end
  end
end
