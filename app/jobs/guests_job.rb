class GuestsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later""
    sleep 5
    p "HelloWorldJob #{Time.now().strftime('%F - %H:%M:%S.%L')}}"
  end
end
