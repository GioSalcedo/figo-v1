class Saving < ApplicationRecord
  belongs_to :business
  validate_presence_of :name, :balance, :currency, :date
  validate_uniqueness_of :name
end
