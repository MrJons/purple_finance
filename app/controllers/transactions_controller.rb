class TransactionsController < ApplicationController
  before_action :set_account, only: [:index]

  def index
    @transactions = @account.Transaction.all
  end

  private

  def set_account
    @account = Account.find(params[:account_id])
  end
end
