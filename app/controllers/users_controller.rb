class UsersController < ApplicationController
  before_action :authenticate_user, {only: [:logout]}

  def new
    @user=User.new
  end

  def create
    @user=User.new(
      ign: params[:ign],
      password: params[:password],
      clan: params[:clan],
      roll: params[:roll]
    )
    if @user.save
      session[:user_id]=@user.id
      redirect_to("/")
    else
      redirect_to("/users/new")
    end
  end

  def login_form
  end

  def login
    @user=User.find_by(ign: params[:ign],
                       password: params[:password])
    if @user
      session[:user_id]=@user.id
      redirect_to("/")
    else
      redirect_to("/login")
    end
  end

  def logout
    session[:user_id]=nil
    redirect_to("/login")
  end

  def index
    @users=User.all
  end

end
