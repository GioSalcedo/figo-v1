class Banking < ApplicationRecord
  belongs_to :busines
  belongs_to :income
  belongs_to :egress
  belongs_to :account
end
