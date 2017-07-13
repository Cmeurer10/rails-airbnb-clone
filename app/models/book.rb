class Book < ApplicationRecord
  has_one :purchase, dependent: :nullify
  belongs_to :user
  has_one :buyer, through: :purchase, source: :user, dependent: :nullify
  validates :title, presence: true
  validates :edition, presence: true
  validates :condition, presence: true, inclusion: { in: ['Good', 'Like New', 'Poor', 'Fair'] }
  validates :price, presence: true, numericality: true
  validates :subject, presence: true
  validates :publisher, presence: true
  # validates :isbn, presence: true


  def sold?
    !buyer.nil?
  end

  def university
    self.user.university
  end
  def self.search(params)

    books = self.all
    books = books.where(edition: params[:edition]) if params[:edition].present?
    books = books.where(condition: params[:condition]) if params[:condition].present?
    books = books.where(price: params[:price]) if params[:price].present?
    books = books.where(subject: params[:subject]) if params[:subject].present?
    books = books.joins(:user).where(user: {university: params[:university]}) if params[:university].present?
    # books = books.where("title LIKE ?", "%#{params[:title]}%") if params[:title].present?

    if params[:title].present?
      string = ""
      params[:title].split(" ").each do |word|
        string += " AND " unless string.empty?
        string += "title iLIKE '%#{word}%'"
      end
      books = books.where(string)
    end
    books
  end
end
