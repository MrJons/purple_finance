class TransactionsController < ApplicationController

  def index
    @transactions = Transaction.all
    @offers=Offer.all
  end

end
