class AddDescripcionToDeudas < ActiveRecord::Migration[5.0]
  def change
    add_column :deudas, :descripcion, :text
  end
end
