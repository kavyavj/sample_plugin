require 'rails/generators'
require 'rails/generators/migration'
require 'active_record'
require 'rails/generators/active_record'

module SamplePlugin
  module Generators
    class SeedGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      def create_initializer_file
	  	vendor "seeds.rb" do
		  hickwall = Hickwall.new
			hickwall.hello("Hello World")
			hickwall.save!
		end
    end
  end
end