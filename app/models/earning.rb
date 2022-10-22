class Earning < ApplicationRecord
  belongs_to :Account
  has_one :Banking
end
