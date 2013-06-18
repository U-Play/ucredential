module Ucredential
  class CredentialWorker

    @queue = :credentials

    def self.perform(user_ids, admin_id, host)
      @users = User.find user_ids
      @admin = User.find admin_id
      @host = host
      @zip = Rails.root.join("public/credentials#{Time.now.strftime("%Y-%m-%d_%H_%M_%S")}.zip")

      render
      zip
    end

    def self.render
      av = ActionView::Base.new()
      av.view_paths = ActionController::Base.view_paths
      pdf_html = av.render layout: 'ucredential/ucredential.html.erb',
        template: "ucredential/print.pdf.erb",
        margin: {
        top: 20,
        bottom: 20,
        left: 14,
        right: 14
      }, locals: { :users => @users, host: @host }
      @pdf = WickedPdf.new.pdf_from_string(pdf_html)
    end

    def self.zip
      temporary_file = write
      Zip::ZipFile.open(@zip, Zip::ZipFile::CREATE) do |z|
        z.add("1.pdf", temporary_file)
      end
      temporary_file.delete
    end

    def self.write
      file = Tempfile.new('credentials.pdf', encoding: 'UTF-8')
      file.binmode
      file.write(@pdf)
      file.close
      file
    end

    def self.send_mail
      #mail = UserMailer.team_credentials_ready User.find(user_id), Team.find(team_id), "#{host_with_port}/#{zip_name}"
      #mail.deliver
    end
  end
end

# class ActionView::Base
#   def protect_against_forgery?
#     false
#   end
# end