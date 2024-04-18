class UsersController < ApplicationController
  
before_action :set_user, only:[:edit,:update]

  def index
  @users=User.all
  end
  
  def show 
    @user = User.find(params[:id])
  end
  
  def new
    @user=User.new
  end

  def create
      @user=User.new(user_params)
      if @user.save
        redirect_to @user,notice:"User Successfully created"
      else
        render :new
    end
 end

  def edit


  end

  def update

    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
  end



    private
    def user_params
      params.required(:user).permit(:name,:email,:password)
    end


    def set_user
      @user = User.find(params[:id])
    end
end
