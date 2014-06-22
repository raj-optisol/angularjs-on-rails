require 'generators/angular/resource_helpers'

module Angular
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Angular::Generators::ResourceHelpers

      source_root File.expand_path("../templates", __FILE__)

      desc "This generator installs Angular.js with a default folder layout in app/assets/javascripts/angular"

      class_option :skip_git, :type => :boolean, :aliases => "-G", :default => false,
                              :desc => "Skip Git ignores and keeps"

      def inject_angular
        # for JavaScript application.js manifest:        
        if File.exists? "#{Rails.root}/app/assets/javascripts/application.js"
          append_to_file "app/assets/javascripts/application.js" do
            "//= require angular\n//= require angular/#{application_name.underscore}\n"
          end    
        # ...or for CoffeeScript application.js.coffee manifest:
        elsif File.exists? "#{Rails.root}/app/assets/javascripts/application.js.coffee"   
          append_to_file "app/assets/javascripts/application.js.coffee" do
            "\n#= require angular"
          end
        end
      end

      def create_dir_layout
        %W{controllers directives filters services}.each do |dir|
          empty_directory "app/assets/javascripts/angular/#{dir}"
          create_file "app/assets/javascripts/angular/#{dir}/.gitkeep" unless options[:skip_git]
          create_file "app/assets/javascripts/angular/#{dir}/#{application_name.underscore}-#{dir.singularize}.coffee"
        end
        %W{styles views}.each do |dir|
          empty_directory "app/assets/javascripts/angular/#{dir}"
          create_file "app/assets/javascripts/angular/#{dir}/.gitkeep" unless options[:skip_git]
        end
      end

      def create_app_file
        template "app.coffee", "app/assets/javascripts/angular/#{application_name.underscore}.coffee"
        create_file "app/assets/javascripts/angular/index.html"
        append_to_file "app/assets/javascripts/angular/#{application_name.underscore}.coffee" do
          "\n\n# Create Angular module\n#{application_name} = angular.module('#{application_name}', [])"
        end
      end

    end
  end
end
