class ClienteSerializer < ActiveModel::Serializer
  attributes :id, :cpf, :nome, :data_niver, :rg, :sexo, :descricao
  has_one :cabine
  has_many :contactos
end
