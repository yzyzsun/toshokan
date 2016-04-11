class UsersController < ApplicationController
  before_action :logged_in_user

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    render layout: 'devise'
  end

  private
    def logged_in_user
      redirect_to root_url, alert: "未登录访客不能访问用户页" unless current_user
    end
end
