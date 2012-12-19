require 'rails/generators'
require 'rails/generators/migration'

module EtCms
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      desc "Generates migrations, seed data and adds mount"

      def self.source_root
        File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
      end

      def self.next_migration_number(dirname)
        Time.now.strftime("%Y%m%d%H%M%S")
      end

      def mount_engine
        route "mount EtCms::Engine, :at => '/'"
      end

      #def create_migration
      #  migration_template "ckeditor.rb", File.join('db/migrate', "create_ckeditor_assets.rb")
      #  sleep 2
      #  migration_template "pages.rb", File.join('db/migrate', "create_et_cms_pages.rb")
      #  sleep 2
      #  migration_template "users.rb", File.join('db/migrate', "devise_create_et_cms_users.rb")
      #end

      def copy_seeds_file
        file = File.open("#{InstallGenerator.source_root}/seeds.rb")
        contents = file.read
        append_to_file 'db/seeds.rb', contents
      end
    end
  end
end