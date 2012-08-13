module SessionsHelper
  
  def sign_in(user)
    cookies.permanent.signed[:remember_token] = [user.id, user.salt]
    current_user = user
  end
  
  def current_user=(user)
    @current_user = user
  end
  
  def current_user
    @current_user ||= user_from_remember_token
  end
  
  def signed_in?
    !current_user.nil?
  end
  
  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end
  
  def deny_access
    redirect_to signin_path, :notice => "Please sign in to access this page."
  end
  
  private
    def user_from_remember_token
      User.authenticate_with_salt(*remember_token)
      # '*' to wrap remember_token into user.id and user.salt
    end
    
    def remember_token
      cookies.signed[:remember_token] || [nil, nil]
    end
end
