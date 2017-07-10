class Book < ApplicationRecord
  has_one :purchase
  belongs_to :user
  has_one :buyer, through: :purchase, source: :user
end
