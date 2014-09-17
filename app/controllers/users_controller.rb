class UsersController < ApplicationController

def index
  @user_names=User.all
  respond_to do|format|
    format.html
    format.json { render json:@user_names }
  end
end
def new
end
def create
  @user =User.create(user_params)
  redirect_to @user
end
def user_params
  params.require(:user).permit(:fname, :lname, :email)
end
def show
  @user= User.find(params[:id])
  respond_to do|format|
    format.html
    format.json { render json:@user}
  end
end
end
