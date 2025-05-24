class ReportJob
  include Sidekiq::Job

  def perform(start_date, end_date, email)
    # Do something
    # user = User.find(user_id)
    puts "SIDEKIQ WORKER GENERATING A REPORT FROM #{start_date} to #{end_date} with #{email}"
  end
end
