require 'rails'

module Ucredential
  class Railtie < Rails::Railtie
    railtie_name :ucredential
    rake_tasks do
      load "tasks/ucredential_tasks.rake"
    end
  end
end