class CreateContactos < ActiveRecord::Migration[5.2]
  def change
    create_table :contactos do |t|
      t.string :email
      t.string :telefone
      t.string :celular
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
