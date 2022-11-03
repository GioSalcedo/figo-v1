class Earning < ApplicationRecord
  belongs_to :account
  validates_presence_of :balance, :currency, :date
end
