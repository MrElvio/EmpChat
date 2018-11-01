class CreateContatos < ActiveRecord::Migration[5.2]
  def change
    create_table :contatos do |t|
      t.string :email
      t.string :celular
      t.string :telefone
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
