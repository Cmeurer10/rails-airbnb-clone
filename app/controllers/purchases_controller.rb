class PurchasesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart

  def index_cart
    @purchases = Purchase.all.where(user: current_user).where(finalized: false)
    @total = @purchases.map { |pur| pur.book.price.to_i }.reduce(&:+)
  end

  def index_dashboard
    @purchases = Purchase.all.where(user: current_user).where(finalized: true)
  end

  def create
    book = Book.find(params[:id])
    @purchase = Purchase.new(user: current_user, book: book)
    @purchase.save
    redirect_to cart_path
  end

  def destroy
    purchase = Purchase.find(params[:id])
    purchase.destroy if current_user == purchase.user
    redirect_to cart_path
  end

  def finalize
    @purchases = current_user.purchases.where(finalized: false)
    @purchases.each do |purchase|
      purchase.finalized = true
      purchase.book.sold = true
      purchase.book.save
      purchase.save
    end
    UserMailer.purchase_confirmation(current_user, @purchases).deliver_now
    redirect_to dashboard_path
  end

  def set_cart
    @user = current_user
    @purchases = @user.purchases if current_user
  end
end
