class VerificationController < ApplicationController
	before_action :signed_in_user
	before_action :is_unverified

  def start
  	@expected_token = current_user.verification_token
  end

  def complete
  end

  private

  def is_unverified
  	redirect_to(root_url) if current_user.is_verified?
  end

end
