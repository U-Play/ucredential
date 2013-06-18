module Ucredential
  module Generators
    class ViewsGenerator < Rails::Generators::Base

      source_root File.expand_path('../templates', __FILE__)

      def stylesheets
        empty_directory 'app/assets/stylesheets/ucredential'
        copy_file 'assets/stylesheets/ucredential/ucredential.css.sass', 'app/assets/stylesheets/ucredential/ucredential.css.sass'
      end

      def views
        empty_directory 'app/views/ucredential'
        copy_file 'views/ucredential/print.pdf.erb', 'app/views/ucredential/print.pdf.erb'
        copy_file 'views/ucredential/_card.erb', 'app/views/ucredential/_card.erb'
        copy_file 'views/ucredential/ucredential.html.erb', 'app/views/ucredential/ucredential.html.erb'
      end

    end
  end
end

