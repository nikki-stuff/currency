class Currency < ApplicationRecord
  validates :name, presence: true
  validates :num_code, presence: true
  validates :char_code, presence: true
  validates :rate, presence: true
end
