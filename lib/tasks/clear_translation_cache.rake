namespace :translations do
  desc 'Clear translation cache'
  task :clear_cache => :environment do
    Rails.cache.clear
    puts 'Translation cache cleared!'
  end
end
