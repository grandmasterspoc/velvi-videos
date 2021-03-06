
class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  def instagram
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      flash[:success] = "Signed In With Instagram!"
    else
      session["devise.instagram_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def google_oauth2
    current_user.from_youtube(request.env['omniauth.auth'])
    if session[:vid_id] != nil
      redirect_to video_path(Video.find(session[:vid_id]))
    else
      redirect_to new_video_path()
    end
    flash[:success] = "Signed In To YouTube! Now Click `One Click Video` To Create Your Video"
  end

  def failure
    redirect_to root_path
  end


  # Model --Logic--> Controller --Variables--> Views



  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
