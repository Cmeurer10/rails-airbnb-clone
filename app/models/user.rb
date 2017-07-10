class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :books
  has_many :purchases
  has_many :books_purchased, through: :purchases, source: :book
  validates :email, presence: true
  validates_format_of :email,:with => Devise::email_regexp
  validates :password, presence: true, length: { in: 6..20 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :university, presence: true
end
