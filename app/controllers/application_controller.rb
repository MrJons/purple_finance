class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # helper_method :tag_match
  #
  #   def tag_match(transaction, offer)
  #     if offer.tag == transaction.tag
  #       offer
  #     end
  #   end

end
