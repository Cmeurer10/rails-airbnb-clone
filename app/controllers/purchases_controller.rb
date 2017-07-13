class PurchasesController < ApplicationController
  def index_cart
    @purchases = Purchase.all.where(user: current_user).where(finalized: false)
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
  end
end
