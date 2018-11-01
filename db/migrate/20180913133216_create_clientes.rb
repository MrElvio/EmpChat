class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :cpf
      t.string :nome
      t.date :data_niver
      t.string :rg
      t.boolean :sexo
      t.string :descricao
      t.references :cabine, foreign_key: true

      t.timestamps
    end
  end
end
