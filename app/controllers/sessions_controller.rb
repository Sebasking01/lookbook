class SessionsController < ApplicationController
  def create
    if session[:user_id]
      binding.pry
    else
     @user = User.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"]) || User.create_with_omniauth(auth_hash)
     session[:user_id] = @user.id
     redirect_to user_path(@user), :notice => "Signed in!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

  private

  def auth_hash
    request.env["omniauth.auth"]
  end

end
