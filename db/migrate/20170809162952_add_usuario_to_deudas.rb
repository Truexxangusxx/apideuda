class AddUsuarioToDeudas < ActiveRecord::Migration[5.0]
  def change
    add_column :deudas, :usuario, :string
  end
end
