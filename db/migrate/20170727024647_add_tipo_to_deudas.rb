class AddTipoToDeudas < ActiveRecord::Migration[5.0]
  def change
    add_column :deudas, :tipo, :string
  end
end
