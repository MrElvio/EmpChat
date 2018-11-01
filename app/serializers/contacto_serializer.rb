class ContactoSerializer < ActiveModel::Serializer
  attributes :id, :email, :telefone, :celular
  has_one :cliente
end
