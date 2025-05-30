class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @user_count = User.count
    # @active_user = User.where("last_sign_in_at > ?", 1.week.ago).count
  end
end
