class UsersController < ApplicationController
  before_action :logged_in_user,  only: [:index, :edit, :update, :destroy, 
                                         :following, :followers]
  before_action :correct_user,    only: [:edit, :update]
  before_action :admin_user,      only: [:index, :destroy]
  
  def index
    @users = User.where(activated: true).paginate(page: params[:page])
  end
  
  def show
    @user = User.find(params[:id])
    @events = @user.events.paginate(page: params[:page], :per_page => 10)
    redirect_to root_url and return unless @user.activated?
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    @yorkemaildomain = @user.email.split('@')[1]
    
    banned_emails = []
    
    if banned_emails.include?(@user.email)
      flash[:danger] = "You account has been banned, please contact admin"
      render 'new'
    elsif @yorkemaildomain != 'york.ac.uk'
      flash[:danger] = "Please use University of York email"
      render 'new'
    elsif @user.save
      @user.send_activation_email
      flash[:info] = "Please check your email to activate your account. It may take a while and check your Spam folder."
      redirect_to root_url
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def setmod
    if logged_in? && current_user.admin?
      @user = User.find_by_id(params[:id])
      @user.update_attribute(:mod, true) 
      flash[:success] = "User ID #{@user.id} is now a mod!"
      redirect_to users_url
    else
      flash[:warning] = "You can't do that!"
      redirect_to users_url
    end
  end
  
  def removemod
    if logged_in? && current_user.admin?
      @user = User.find_by_id(params[:id])
      @user.update_attribute(:mod, false) 
      flash[:success] = "User ID #{@user.id} no longer a mod!"
      redirect_to users_url
    else
      flash[:warning] = "You can't do that!"
      redirect_to users_url
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end
  
  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'show_follow'
  end
  
  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end
  
  private
    def user_params
      params.require(:user).permit(:name, :email, :password, 
                                   :password_confirmation)      
    end
    
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in"
        redirect_to login_url
      end
    end
    
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
    
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
  
end
