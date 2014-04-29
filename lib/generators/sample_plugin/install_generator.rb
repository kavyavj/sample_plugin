require 'rails/generators'
require 'rails/generators/migration'
require 'active_record'
require 'rails/generators/active_record'

module SamplePlugin
  module Generators
    class InstallGenerator < Rails::Generators::Base
      # include Rails::Generators::Migration

      # source_root File.expand_path("../templates", __FILE__)
        source_root File.expand_path("../../../../app/views/sample_plugin", __FILE__)

      # # Implement the required interface for Rails::Generators::Migration.
      # def self.next_migration_number(dirname) #:nodoc:
      #   next_migration_number = current_migration_number(dirname) + 1
      #   if ActiveRecord::Base.timestamped_migrations
      #     [Time.now.utc.strftime("%Y%m%d%H%M%S"), "%.14d" % next_migration_number].max
      #   else
      #     "%.3d" % next_migration_number
      #   end
      # end

      # def copy_migration
      #   migration_template 'install.rb', 'db/migrate/install_sample_plugin.rb'
      # end

      

      def generate_forums_table
        generate "scaffold", "forums title:string description:text"
      end 

      def perform_db_migrate
        rake "db:migrate"
      end

      def create_seed_file
          vendor "seeds.rb" do
            #Table created by plugin
            forum = Forum.new
            forum.title = "ABCD"
            forum.description = "kalskdn hfhfhf fhfheu juurriowkwj"
            forum.save!

            #Table that is in application
            hickwall = Hickwall.new
            hickwall.hello("Hello World")
            hickwall.save!
        end
      end

      def copy_directory
        directory 'welcome', '/app/views/sample_plugin'
      end  
      


    end
  end
end