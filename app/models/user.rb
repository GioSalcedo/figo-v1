class User < ApplicationRecord
  has_many :businesses
  has_many :savings, through: :businesses
  has_many :debts, through: :businesses
  has_many :budgets, through: :businesses
  has_many :accounts, through: :businesses
  has_one_attached :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
