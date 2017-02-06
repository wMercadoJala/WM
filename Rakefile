namespace :db do
  task :load_config do
    # TODO, add task to load DB
  end
end

namespace :style_code do
  task :analyze do
    `rubocop --format html -o rubocop/rubocop.html`
  end
end

namespace :devops do
  desc 'Starts the thin web server through rackup.'
  task :start_app do
    `rackup -p 2000`
  end
end
