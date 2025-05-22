class PagesController < ApplicationController
  def report
    ReportJob.perform_async
  end
end
