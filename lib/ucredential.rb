require 'wicked_pdf'
require 'zip/zip'
require 'resque'
require 'ucredential/credential_worker'

module Ucredential
  require 'ucredential/railtie' if defined?(Rails)
  autoload :CredentialWorker, 'ucredential/credential_worker'
end


ActionView::Base.send :include, UcredentialHelper