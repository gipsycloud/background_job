class PagesController < ApplicationController
  before_action :authenticate_user!  # For default User model
  def report
    ReportJob.perform_async("01-01-2025", "30-01-2025", email)
    render text: "Request to generate a report added to the queue"
  end

  private

  def email
    current_user.email
  end
end
