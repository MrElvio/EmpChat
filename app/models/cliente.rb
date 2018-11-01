class Cliente < ApplicationRecord
  belongs_to :cabine
  has_many :contactos
end
