class Account < ApplicationRecord
  belongs_to :business
  has_many :bankings
  has_many :earnings, through: :bankings
  has_many :egresses, through: :bankings
  validate_presence_of :name, :balance, :currency
end
