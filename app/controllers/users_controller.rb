class UsersController < ApplicationController
  def index
   @users = User.all
    
  end
  def show
    @user = User.find(params[:id])  
  end
 def signin
 	@user= User.new
  
  end
  def new
    @user = User.new
  end

  def create
    @user = User.new(posty_params)
    if @user.save
    	redirect_to @user
    
 
    else
      render 'new'
    end
   end 

def logincheck
   username = User.find_by_user_name(params[:u_name])
     
end
def validate
	@user =User.find_by_user_name(params[:u_name])

	@user_pass =User.find_by_password(params[:passwoed])
	if @user && @user_pass
	end
end
    private
  def posty_params
    params.require(:user).permit(:u_name, :f_name, :l_name, :image, :email, :password)
  end
  end 
