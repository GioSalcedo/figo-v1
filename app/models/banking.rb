class Banking < ApplicationRecord
  belongs_to :earning
  belongs_to :egress
  belongs_to :account
end
