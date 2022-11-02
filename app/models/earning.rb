class Earning < ApplicationRecord
  belongs_to :account
  validate_presence_of :balance, :currency, :date
end
