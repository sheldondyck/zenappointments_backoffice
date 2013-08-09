module SessionsHelper
  SUPER_SAFE_SECURE_LUCKY_TOKEN = 'abc1234$'

  def signed_in?
    cookies[:signin_token] == SUPER_SAFE_SECURE_LUCKY_TOKEN
  end

  def sign_in
    cookies.permanent[:signin_token] = SUPER_SAFE_SECURE_LUCKY_TOKEN
  end

  def sign_out
    cookies.delete(:signin_token)
  end
end
