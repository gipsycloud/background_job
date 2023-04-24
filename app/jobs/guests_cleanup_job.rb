class GuestsCleanupJob < ApplicationJob
  self.queue_adapter = :resque
  queue_as :default

  def perform(*args)
    # Do something later
  end
end
