class Banking < ApplicationRecord
  belongs_to :user
  belongs_to :earning
  belongs_to :egress
end
