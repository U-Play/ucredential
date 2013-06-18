module UcredentialHelper
  def generate_credentials user_ids, admin_id, host
    Resque.enqueue Ucredential::CredentialWorker, user_ids, admin_id, host
  end
end
