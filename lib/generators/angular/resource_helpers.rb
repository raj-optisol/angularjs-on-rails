module Angular
  module Generators
    module ResourceHelpers
      
      def angular_path
        "app/assets/javascripts/angular"
      end

      def js_app_name
        application_name.camelize
      end
      
      def application_name
        if defined?(Rails) && Rails.application
          Rails.application.class.name.split('::').first
        else
          "application"
        end
      end
      
      def uncapitalize(str)
        str[0, 1].downcase << str[1..-1]
      end
      
    end
  end
end
