class EmpresaSerializer < ActiveModel::Serializer
  attributes :id, :cnpj, :nome_fatasia, :setor, :endereco, :status
  has_many :cabines
end
