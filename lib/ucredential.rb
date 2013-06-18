require 'wicked_pdf'
require 'zip/zip'
require 'resque/server'

module Ucredential
  # adds tasks to rails, including resque tasks.
  require 'ucredential/railtie' if defined?(Rails)
  autoload :CredentialWorker, 'ucredential/credential_worker'
end

# adds the generate_credential helper.
require 'ucredential/ucredential_helper'
ActionController::Base.send :include, UcredentialHelper


# allows resque to access actionview templates.
module UcredentialOverride
  def protect_against_forgery?
    false
  end
end
ActionView::Base.send :include, UcredentialOverride