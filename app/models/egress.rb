class Egress < ApplicationRecord
  belongs_to :account
  validates_presence_of :balance
end
