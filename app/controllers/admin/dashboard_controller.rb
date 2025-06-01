class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @user_count = User.find_by_id(id: session[:user_id])
    # @active_user = User.where("last_sign_in_at > ?", 1.week.ago).count
  end

  def user_profile
    @user = current_user
  end

  # def products
  # end

  def reports
  end
end
