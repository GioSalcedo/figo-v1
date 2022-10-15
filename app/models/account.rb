class Account < ApplicationRecord
  belongs_to :business
  has_many :earnings, through: :bankings
end
