namespace :data do
  desc "Remove stale records"
  task cleanup: :environment do
    stale_records = User.where("created_at < ?", 1.year.ago)
    count = stale_records.destroy_all.count
    puts "Deleted #{count} stale user records"
  end
end # rubocop:disable Layout/TrailingEmptyLines