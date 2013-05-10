module SessionsHelper

  # ========
  # Sign in/out
  # ========
  def sign_in(user)
    cookies[:user] = user.id
    self.current_user = user
  end

  def sign_out
    self.current_user = nil
    cookies.delete :user
  end

  # ========
  # Session helpers
  # ========
  def signed_in?
    !current_user.nil?
  end

  def current_user?(user)
    user == current_user
  end

  # ========
  # Session getters/setters
  # ========
  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_id(cookies[:user])
  end

  # ========
  # Session filters methods
  # ========
  def signed_in_user
    unless signed_in?
      redirect_to root_path, notice: 'Por favor ingresa para acceder a tu perfil.'
    end
  end

end
