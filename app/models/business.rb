class Business < ApplicationRecord
  belongs_to :user
  has_many :accounts
  has_many :savings
  has_many :debts
  has_many :budgets
end
