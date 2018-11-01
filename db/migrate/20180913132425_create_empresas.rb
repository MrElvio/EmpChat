class CreateEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :empresas do |t|
      t.string :cnpj
      t.string :nome_fatasia
      t.string :setor
      t.string :endereco
      t.boolean :status

      t.timestamps
    end
  end
end
