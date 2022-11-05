class Account < ApplicationRecord
  belongs_to :business
  has_many :bankings
  has_many :earnings
  has_many :egresses
  validates_presence_of :name, :balance, :currency
  validates_uniqueness_of :name, scope: :business_id
  after_create :update_name_account

  def update_name_account
    new_name = "#{name} - #{business.name}"
    self.update(name: new_name)
  end
end
