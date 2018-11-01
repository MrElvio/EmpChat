class CabineSerializer < ActiveModel::Serializer
  attributes :id, :cod
  has_one :empresa
  has_many :clientes
end
