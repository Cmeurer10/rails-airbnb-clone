class Book < ApplicationRecord
  has_one :purchase
  belongs_to :user
  has_one :buyer, through: :purchase, source: :user
  validates :title, presence: true
  validates :edition, presence: true
  validates :condition, presence: true, includsion: { in: ['Good', 'Like New', 'Poor', 'Fair'] }
  validates :price, presence: true, numericality: true
  validates :subject, presence: true
  validates :isbn, presence: true
  validates :publisher, presence: true

  def sold?
    return !buyer.nil?
  end
end
