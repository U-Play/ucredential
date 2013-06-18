require 'resque/tasks'

task "resque:setup" => :environment do
  Resque.before_fork = Proc.new { ActiveRecord::Base.establish_connection }
end

# desc "Explaining what the task does"
# task :ucredential do
#   # Task goes here
# end
