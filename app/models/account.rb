class Account < ApplicationRecord
  belongs_to :business
  has_many :bankings
  has_many :earnings
  has_many :egresses
  validates_presence_of :name, :balance, :currency
  validates_uniqueness_of :name, scope: :business_id
end
