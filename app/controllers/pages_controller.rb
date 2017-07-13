class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]

  def home
  	@user = current_user
  	@purchases = @user.purchases if current_user
  end

  def dashboard
    @user = current_user
    @purchases = @user.purchases
    purchases = Purchase.all.where(user: current_user, finalized: true)
    @books_purchased = purchases.map { |pur| pur.book }
    @delete_message = "Are you sure? This will remove the book from your dashboard as well."
  end

  private
end
