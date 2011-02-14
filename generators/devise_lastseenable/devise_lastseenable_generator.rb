require 'rails/generators/migration'

class DeviseLastseenableGenerator < Rails::Generators::NamedBase
  include Rails::Generators::Migration

  def self.source_root
    @_devise_source_root ||= File.expand_path("../templates", __FILE__)
  end

  def self.orm_has_migration?
    Rails::Generators.options[:rails][:orm] == :active_record
  end

  def self.next_migration_number(dirname)
    if ActiveRecord::Base.timestamped_migrations
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    else
      "%.3d" % (current_migration_number(dirname) + 1)
    end
  end

  class_option :orm
  class_option :migration, :type => :boolean, :default => orm_has_migration?


  def create_migration_file
    migration_template 'migration.rb', "db/migrate/devise_add_lastseenable_#{name.downcase}.rb"
  end

  protected
end