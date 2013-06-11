module Ucredential
  module Generators
    class ViewsGenerator < Rails::Generators::Base

      def install
        template 'print.pdf.erb', 'app/views/ucredentials/print.pdf.erb'
      end
      
    end
  end
end

