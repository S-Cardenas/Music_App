class SessionsController < ApplicationController
  before_action :require_no_user!, only: [:create, :new]

  def new
    render :new
  end

  def destroy
    logout_user!
    redirect_to users_url
  end

  def create
    user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )

    if user.nil?
      flash.now[:error] = ['Incorrect username and/or password']
      render :new
    else
      login_user!(user)
      redirect_to users_url(user)
    end

  end

end
