class Budget < ApplicationRecord
  belongs_to :business
  validates_presence_of :name, :balance, :currency, :date
  validates_uniqueness_of :name
end
