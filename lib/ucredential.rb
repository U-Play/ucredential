require 'wicked_pdf'
require 'zip/zip'
require 'resque/tasks'

module Ucredential
  autoload :CredentialWorker, 'ucredential/credential_worker'
end
