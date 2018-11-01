class Cabine < ApplicationRecord
  belongs_to :empresa
  has_many :clientes
end
