class UniqueCorreo < ActiveRecord::Migration[5.0]
  def change
    add_index :users, :correo, unique: true
  end
end
